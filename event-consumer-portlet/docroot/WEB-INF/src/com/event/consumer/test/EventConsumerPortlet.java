package com.event.consumer.test;

import java.io.IOException;

import javax.portlet.Event;
import javax.portlet.EventRequest;
import javax.portlet.EventResponse;
import javax.portlet.PortletException;
import javax.portlet.ProcessEvent;

import com.liferay.util.bridges.mvc.MVCPortlet;

public class EventConsumerPortlet extends MVCPortlet {

    @ProcessEvent(qname = "{http://liferay.com}empinfo")
    public void processEventEmpinfo(EventRequest request, EventResponse response) throws IOException, PortletException {
        Event event = request.getEvent();
        String value = (String) event.getValue();

        System.out.println("Value in process event >>>>>>>>>>>>> " + value);
        response.setRenderParameter("empinfo", value);
    }

}
