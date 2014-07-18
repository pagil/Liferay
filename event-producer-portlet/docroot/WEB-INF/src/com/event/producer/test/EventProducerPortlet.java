package com.event.producer.test;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;

import com.liferay.util.bridges.mvc.MVCPortlet;

public class EventProducerPortlet extends MVCPortlet {
    final String ACTION_A = "{\"ACTION\":{{\"ACTION_ID\":\"ActionA\"},\"ACTION_VALUE\":{\"NUM_OF_ACCOUNTS\":29814,\"TOTAL_PAID\":241863.6900000005,\"POSTAL\":3000,\"TOTAL_NOT_PAID\":29205.68999999981}}}";
    final String ACTION_B = "{\"ACTION\":{{\"ACTION_ID\":\"ActionB\"},\"ACTION_VALUE\":{\"NUM_OF_ACCOUNTS\":5404,\"TOTAL_PAID\":33960.07000000003,\"POSTAL\":3001,\"TOTAL_NOT_PAID\":6758.070000000018}}}";
    final String ACTION_C = "{\"ACTION\":{{\"ACTION_ID\":\"ActionC\"},\"ACTION_VALUE\":{\"NUM_OF_ACCOUNTS\":3903,\"TOTAL_PAID\":38716.60999999999,\"POSTAL\":3002,\"TOTAL_NOT_PAID\":3118.41}}}";

    public void fireActionA(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException,
            PortletException {
        actionResponse.setRenderParameter("id1", ACTION_A);
        System.out.println("VYAFIMCHYK: ActionA fired!!!");
    }

    public void fireActionB(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException,
            PortletException {
        actionResponse.setRenderParameter("id1", ACTION_B);
        System.out.println("VYAFIMCHYK: ActionB fired!!!");
    }

    public void fireActionC(ActionRequest actionRequest, ActionResponse actionResponse) throws IOException,
            PortletException {
        actionResponse.setRenderParameter("id1", ACTION_C);
        System.out.println("VYAFIMCHYK: ActionC fired!!!");
    }

}
