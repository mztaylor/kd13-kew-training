/*
 * Copyright 2006-2013 The Kuali Foundation
 *
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.opensource.org/licenses/ecl2.php
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.kuali.rice.krworkshop;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.kuali.rice.kew.api.exception.WorkflowException;
import org.kuali.rice.kew.engine.RouteContext;
import org.kuali.rice.kew.engine.RouteHelper;
import org.kuali.rice.kew.engine.node.RouteNode;
import org.kuali.rice.kew.engine.node.SplitNode;
import org.kuali.rice.kew.engine.node.SplitResult;
import org.kuali.rice.kns.service.KNSServiceLocator;
import org.kuali.rice.krad.datadictionary.DocumentEntry;
import org.kuali.rice.krad.datadictionary.RoutingTypeDefinition;
import org.kuali.rice.krad.datadictionary.WorkflowAttributes;
import org.kuali.rice.krad.document.Document;
import org.kuali.rice.krad.service.DocumentService;
import org.kuali.rice.krad.service.KRADServiceLocator;
import org.kuali.rice.krad.service.KRADServiceLocatorWeb;
import org.springframework.util.StringUtils;

public class RoutingAttributeSplitNode implements SplitNode {

    private static final String VALID_ROUTING_ATTRIBUTE = "splitNodeAttribute";
    private static final String DEFAULT_BRANCH = "DEFAULT";

	private static DocumentService documentService;
	
    private static org.apache.commons.logging.Log LOG = org.apache.commons.logging.LogFactory.getLog(RoutingAttributeSplitNode.class);

    /**
     * This method will look up the document being routed and the routing attributes associated with this node.  
     * If a routingAttribute marked 'splitNodeAttribute' is found KEW should route to based upon the split node 
     * attribute of the split node.  If no matching value is found and a 'DEFAULT' branch is available it will 
     * be routed to the DEFAULT branch. 
     *
     * @param routeContext 
     * @param qualifiers 
     * @return SplitResult based on routing attribute
     */    
    public SplitResult process(RouteContext routeContext, RouteHelper helper ) throws Exception {

        final String routeLevel = routeContext.getNodeInstance().getName();
        final DocumentEntry documentEntry = getDocumentEntry(routeContext);
        final RoutingTypeDefinition routingTypeDefinition = getWorkflowAttributeDefintion(documentEntry, routeLevel);
        final Document document = getDocument(routeContext);
        List<Map<String, String>> qualifiers = null;
        
        if (document != null && routingTypeDefinition != null) {
            qualifiers = KNSServiceLocator.getWorkflowAttributePropertyResolutionService().resolveRoutingTypeQualifiers(document, routingTypeDefinition);
            return qualifiersToSplitResult( routeContext, qualifiers ); 
        }
             
        throw new UnsupportedOperationException( "Document was not supported by Routing Attribute Split Node." );
    }
    
    /**
     * Identifies a routing attribute 'splitNodeAttribute' associated with the node to locate the correct branch.
     * If not found and 'DEFAULT' branch exists, uses default.
     * 
     * @param routeContext
     * @param qualifiers 
     * @return SplitResult with matching splitNodeAttribute
     */
    protected SplitResult qualifiersToSplitResult(RouteContext routeContext, List<Map<String, String>> qualifiers) {
        boolean hasDefaultBranch = false;
    	List<String> branches = new ArrayList<String>();
    	
        for (RouteNode routeNode : routeContext.getNodeInstance().getRouteNode().getNextNodes())
        {
        	if(DEFAULT_BRANCH.equalsIgnoreCase(routeNode.getBranch().getName())) {
        		hasDefaultBranch = true;
        	}
        	
        	// locates routing attribute valid used for matching against branches
        	String splitNodeAttribute = "";
        	for(Map<String, String> qualifer: qualifiers ) {
        		if(qualifer.containsKey(VALID_ROUTING_ATTRIBUTE)) {
        			splitNodeAttribute = qualifer.get(VALID_ROUTING_ATTRIBUTE);
        		}
        	}
        	
        	if(!StringUtils.isEmpty(splitNodeAttribute) && 
        			splitNodeAttribute.equals(routeNode.getBranch().getName())) {
        		branches.add(splitNodeAttribute);   
        	}
        }
        
        if(branches.size() == 0 && hasDefaultBranch) {
            branches.add(DEFAULT_BRANCH);       	
        }
        
        return new SplitResult(branches);
    }
    
    
    // Document related method calls
    
    protected DocumentEntry getDocumentEntry(RouteContext context) {
        return KRADServiceLocatorWeb.getDataDictionaryService().getDataDictionary().getDocumentEntry(context.getDocument().getDocumentType().getName());
    }
    
    protected Document getDocument(RouteContext context) {
        String documentID = getDocumentId(context);
        
        if (documentID != null) {
            try {
                return getDocumentService().getByDocumentHeaderIdSessionless(documentID);
            }
            catch (WorkflowException e) {
                LOG.error("Unable to retrieve document with system user.", e);
                return null;
            }
        }
        
        return null;
    }
    
    protected String getDocumentId(RouteContext context) {
        final String documentID = context.getNodeInstance().getDocumentId();
        return documentID != null ? documentID.toString() : null;
    }
    
	public DocumentService getDocumentService() {
		if ( documentService == null ) {
			documentService = KRADServiceLocatorWeb.getDocumentService();
		}
		
		return documentService;
	}
    
    /**
     * Retrieves the proper List of WorkflowAttributes for the given route level from the data dictionary
     * document entry
     * 
     * @param documentEntry the data dictionary document entry for the currently routed document
     * @param routeLevelName the name of the route level
     * @return a WorkflowAttributeDefinition if one could be found for the route level; otherwise, nothing
     */
    protected RoutingTypeDefinition getWorkflowAttributeDefintion(DocumentEntry documentEntry, String routeLevelName) {
       final WorkflowAttributes workflowAttributes = documentEntry.getWorkflowAttributes();
       if ( workflowAttributes == null ) {
           return null;
       }
       
       final Map<String, RoutingTypeDefinition> routingTypeMap = workflowAttributes.getRoutingTypeDefinitions();
       if (routingTypeMap.containsKey(routeLevelName)) return routingTypeMap.get(routeLevelName);
       return null;
    }

}
