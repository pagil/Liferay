package com.event.producer.test;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;

import com.liferay.util.bridges.mvc.MVCPortlet;

public class EventProducerPortlet extends MVCPortlet {

    @Override
    public void processAction(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException,
            PortletException {
        actionResponse.setRenderParameter("id1", "EventA");
        System.out.println("VYAFIMCHYK: Action processed!!!");
    }

}
