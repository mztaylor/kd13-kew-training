package org.kuali.rice.krworkshop.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.kuali.rice.core.api.exception.RiceIllegalArgumentException;
import org.kuali.rice.core.api.uif.RemotableAttributeField;
import org.kuali.rice.kim.api.KimConstants;
import org.kuali.rice.kim.api.type.KimAttributeField;
import org.kuali.rice.kns.kim.role.RoleTypeServiceBase;

@SuppressWarnings("deprecation")
public class NamespaceRoleTypeServiceImpl extends RoleTypeServiceBase {


    @Override
    protected List<String> getRequiredAttributes() {
        return Collections.singletonList(KimConstants.AttributeConstants.NAMESPACE_CODE);
    }

    @Override
    public List<String> getWorkflowRoutingAttributes(String routeLevel) {
        if (StringUtils.isBlank(routeLevel)) {
            throw new RiceIllegalArgumentException("routeLevel was blank or null");
        }

        return Collections.singletonList(KimConstants.AttributeConstants.NAMESPACE_CODE);
    }

	@Override
	public List<KimAttributeField> getAttributeDefinitions(String kimTypeId) {
		if (StringUtils.isBlank(kimTypeId)) {
            throw new RiceIllegalArgumentException("kimTypeId was null or blank");
        }

        List<KimAttributeField> fields = new ArrayList<KimAttributeField>(super.getAttributeDefinitions(kimTypeId));

        // make the namespace code required
		for (int i = 0; i < fields.size(); i++) {
            final KimAttributeField definition = fields.get(i);
			if (KimConstants.AttributeConstants.NAMESPACE_CODE.equals(definition.getAttributeField().getName())) {
				KimAttributeField.Builder b = KimAttributeField.Builder.create(definition);

                RemotableAttributeField.Builder fb =  b.getAttributeField();
                fb.setRequired(true);

                b.setAttributeField(fb);
                fields.set(i, b.build());
			}
		}
		return Collections.unmodifiableList(fields);
	}

	
	/**
	 * Check for entries that match the namespace.
	 */
	@Override
	protected boolean performMatch(Map<String, String> inputAttributes, Map<String, String> storedAttributes) {
		// namespace from the document
		String requestedNamespaceCode = inputAttributes.get(KimConstants.AttributeConstants.NAMESPACE_CODE);
		// namespace in the KIM database on the role member
		String storedNamespaceCode = storedAttributes.get(KimConstants.AttributeConstants.NAMESPACE_CODE);

		if ( StringUtils.isBlank( requestedNamespaceCode ) ) {
			return false;
		}
		
		if ( StringUtils.equals(requestedNamespaceCode, storedNamespaceCode) ) {
			return true;
		}
		
		// convert to a regex match for "*" and re-test
		if ( requestedNamespaceCode.matches(storedNamespaceCode.replaceAll("\\*", ".*") ) ) {
			return true;
		}
		
		return false;
	}
	
}
