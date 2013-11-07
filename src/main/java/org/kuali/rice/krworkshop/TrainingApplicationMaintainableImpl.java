/**
 * Copyright 2005-2013 The Kuali Foundation
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

import org.kuali.rice.krad.maintenance.MaintainableImpl;
import org.kuali.rice.krad.uif.component.Component;
import org.kuali.rice.krad.uif.util.ProcessLogger;
import org.kuali.rice.krad.uif.view.View;
import org.kuali.rice.krad.uif.view.ViewModel;
import org.kuali.rice.krad.web.form.UifFormBase;

import java.util.HashMap;
import java.util.Map;

/**
 * @author Kuali Rice Team (rice.collab@kuali.org)
 */
public class TrainingApplicationMaintainableImpl extends MaintainableImpl {

    @Override
    public void performApplyModel(View view, Object model) {
        ProcessLogger.trace("apply-model:" + view.getId());

        // get action flag and edit modes from authorizer/presentation controller
        retrieveEditModesAndActionFlags(view, (UifFormBase) model);

        // set view context for conditional expressions
        setViewContext(view, model);

        ProcessLogger.trace("apply-comp-model:" + view.getId());
        Map<String, Integer> visitedIds = new HashMap<String, Integer>();
        performComponentApplyModel(view, view, model, visitedIds);
        ProcessLogger.trace("apply-model-end:" + view.getId());

        // apply default values if they have not been applied yet
        if (!((ViewModel) model).isDefaultsApplied()) {
            applyDefaultValues(view, view, model);
            ((ViewModel) model).setDefaultsApplied(true);
        }
    }
}
