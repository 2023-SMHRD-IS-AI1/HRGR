package kr.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

public class payController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Controller
	public class PayController {

	    private final IamportClient iamportClient;

	    public PayController() {
	        this.iamportClient = new IamportClient("2634851125785437",
	                "yyrpEC1rxUmK4RDcodwdZj44ZWfHZ1rfWnxSrbndkguP7lPyMeCBLGFq3d6j4wSiBE2xKU4gcHTTuDpB");
	    }

	    @ResponseBody
	    @RequestMapping("/verify/{imp_uid}")
	    public IamportResponse<Payment> paymentByImpUid(@PathVariable("imp_uid") String imp_uid)
	            throws IamportResponseException, IOException {
	        return iamportClient.paymentByImpUid(imp_uid);
	    }

	}

}
