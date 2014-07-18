package com.liferay.samples;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.PortletPreferences;

import com.liferay.portal.kernel.servlet.SessionErrors;
import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.util.bridges.mvc.MVCPortlet;

public class MyGreetingPortlet extends MVCPortlet {

    @Override
    public void processAction(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException,
            PortletException {

        PortletPreferences prefs = actionRequest.getPreferences();
        String greeting = actionRequest.getParameter("greeting");

        try {
            if (greeting == null || greeting.length() == 0) {
                throw new IllegalArgumentException("You are trying to set empty greeting!");
            }
            prefs.setValue("greeting", greeting);
            prefs.store();
            SessionMessages.add(actionRequest, "success");
        } catch (Exception e) {
            SessionErrors.add(actionRequest, "error");
        }

        super.processAction(actionRequest, actionResponse);
    }
}
