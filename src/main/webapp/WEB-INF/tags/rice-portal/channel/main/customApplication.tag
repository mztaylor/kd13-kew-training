<%--
  ~ Copyright 2006-2012 The Kuali Foundation
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

<channel:portalChannelTop channelTitle="krworkshop"/>
<div class="body">

  <ul class="chan">
      Code Labs:
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/collegeapp?viewId=Training-CollegeApplicationView-Lab1&methodToCall=start" />Kuali University - Lab 1: Components and Containers</a></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/collegeapp?viewId=Training-CollegeApplicationView-Lab2&methodToCall=start" />Kuali University - Lab 2: Validation </a></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/collegeapp?viewId=Training-CollegeApplicationView-Lab3&methodToCall=start" />Kuali University - Lab 3: Actions and Custom Controllers</a></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/collegeapp?viewId=Training-CollegeApplicationView-Lab4&methodToCall=start" />Kuali University - Lab 4: Progressive Disclosure</a></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/collegeapp?viewId=Training-CollegeApplicationView-Lab5&methodToCall=start" />Kuali University - Lab 5: Collections</a></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/collegeapp?viewId=Training-CollegeApplicationView-Lab6&methodToCall=start" />Kuali University - Lab 6: Event Handling</a></li>
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/collegeapp?viewId=Training-CollegeApplicationView-Lab7&methodToCall=start" />Kuali University - Lab 7: Rich Messages</a></li>
	  <br><br><br>
	  Complete Page:
      <li><a class="portal_link" target="_blank" href="${ConfigProperties.application.url}/kr-krad/collegeapp?viewId=Training-CollegeApplicationView&methodToCall=start" />Kuali University - Apply Now!</a></li>
  </ul>

</div>
<channel:portalChannelBottom/>
