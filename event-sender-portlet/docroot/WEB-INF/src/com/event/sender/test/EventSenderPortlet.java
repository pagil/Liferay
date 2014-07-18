package com.event.sender.test;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.Event;
import javax.portlet.EventRequest;
import javax.portlet.EventResponse;
import javax.portlet.PortletException;
import javax.portlet.ProcessEvent;
import javax.xml.namespace.QName;

import com.liferay.portal.kernel.util.PropsUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

public class EventSenderPortlet extends MVCPortlet {
    final String ACTION_A = "{\"ACTION\":{{\"ACTION_ID\":\"ActionA\"},\"ACTION_VALUE\":{\"NUM_OF_ACCOUNTS\":29814,\"TOTAL_PAID\":241863.6900000005,\"POSTAL\":3000,\"TOTAL_NOT_PAID\":29205.68999999981}}}";
    final String ACTION_B = "{\"ACTION\":{{\"ACTION_ID\":\"ActionB\"},\"ACTION_VALUE\":{\"NUM_OF_ACCOUNTS\":5404,\"TOTAL_PAID\":33960.07000000003,\"POSTAL\":3001,\"TOTAL_NOT_PAID\":6758.070000000018}}}";
    final String ACTION_C = "{\"ACTION\":{{\"ACTION_ID\":\"ActionC\"},\"ACTION_VALUE\":{\"NUM_OF_ACCOUNTS\":3903,\"TOTAL_PAID\":38716.60999999999,\"POSTAL\":3002,\"TOTAL_NOT_PAID\":3118.41}}}";

    public void sendEventA(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException,
            PortletException {
        QName qName = new QName("http://liferay.com", "empinfo", "x");
        actionResponse.setEvent(qName, ACTION_A);
        String valueFromPortletExt = PropsUtil.get("portlet.event.distribution");
        System.out.println("portlet.event.distribution is set to >>>>>>>>>>>>> " + valueFromPortletExt);
    }

    public void sendEventB(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException,
            PortletException {
        QName qName = new QName("http://liferay.com", "empinfo", "x");
        actionResponse.setEvent(qName, ACTION_B);
        String valueFromPortletExt = PropsUtil.get("portlet.event.distribution");
        System.out.println("portlet.event.distribution is set to >>>>>>>>>>>>> " + valueFromPortletExt);
    }

    public void sendEventC(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException,
            PortletException {
        QName qName = new QName("http://liferay.com", "empinfo", "x");
        actionResponse.setEvent(qName, ACTION_C);
        String valueFromPortletExt = PropsUtil.get("portlet.event.distribution");
        System.out.println("portlet.event.distribution is set to >>>>>>>>>>>>> " + valueFromPortletExt);
    }

    @ProcessEvent(qname = "{http://liferay.com}empinfo")
    public void processEventEmpinfo(EventRequest request, EventResponse response) throws IOException, PortletException {
        Event event = request.getEvent();
        String value = (String) event.getValue();

        System.out.println("Value in process event >>>>>>>>>>>>> " + value);
        response.setRenderParameter("empinfo", value);
    }

}
