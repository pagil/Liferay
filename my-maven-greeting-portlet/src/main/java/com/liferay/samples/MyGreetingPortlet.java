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
    public void setGreeting(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException,
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

    }

    public void sendEmail(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException,
            PortletException {
        String email = actionRequest.getParameter("email");
        try {
            if (email == null || email.length() == 0) {
                throw new IllegalArgumentException("Email is not specified.");
            }
            System.out.println("Email address: " + email);
            System.out.println("Email has been sent!!!");
            SessionMessages.add(actionRequest, "emailSentSuccesfully");
        } catch (Exception e) {
            SessionErrors.add(actionRequest, "emailSendingFailed");
        }
    }
}
