<%--
  ~ Copyright 2006-2013 The Kuali Foundation
  ~
  ~ Licensed under the Educational Community License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~ http://www.opensource.org/licenses/ecl2.php
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  --%>

<%--
Kuali Rice ArcheType Help

This file contains custom application specific portal content.
--%>

<%@ include file="/rice-portal/jsp/sys/riceTldHeader.jsp" %>

<channel:portalChannelTop channelTitle="KEW Training"/>
<div class="body">
  
    <ul class="chan">
        Kew Code Labs:
        <li><portal:portalLink displayTitle="true" title="Kuali University - Create Application" url="${ConfigProperties.application.url}/kr-krad/maintenance?methodToCall=start&viewId=Training-MaintenanceView&dataObjectClassName=org.kuali.rice.krworkshop.TrainingApplication&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true"/></li>
        <li><portal:portalLink displayTitle="true" title="Kuali University - Training Application Lookup" url="${ConfigProperties.application.url}/kr-krad/lookup?methodToCall=start&viewId=Training-LookupView&showMaintenanceLinks=true&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true"/></li>
    </ul>

    <ul class="chan">
        Workflow Configuration:
        <li><portal:portalLink displayTitle="true" title="Routing & Identity Management Document Type Hierarchy" url="${ConfigProperties.application.url}/kew/RuleQuickLinks.do?returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true"/></li>
    </ul>

</div>
<channel:portalChannelBottom/>
