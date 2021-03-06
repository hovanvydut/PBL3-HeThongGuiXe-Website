package hovanvy.app.parking_package.controllers;

import hovanvy.common.enums.PathJsp;
import hovanvy.common.exceptions.CustomerNotFoundException;
import hovanvy.common.exceptions.ParkingPackageNotFoundException;
import hovanvy.core.parking_package.services.ParkingPackageService;
import hovanvy.core.parking_package.services.ParkingPackageServiceImpl;
import hovanvy.core.payment.service.PaymentService;
import hovanvy.core.payment.service.PaymentServiceImpl;
import hovanvy.entity.Customer;
import hovanvy.entity.ParkingPackage;
import hovanvy.entity.Payment;
import hovanvy.util.CustomerUtil;
import java.io.IOException;
import java.util.List;
import java.util.Optional;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author hovanvydut
 */

@WebServlet(urlPatterns = {"/parking-package/register"})
public class RegisterParkingPackageServlet extends HttpServlet{
    
    private final ParkingPackageService parkingPackageService = new ParkingPackageServiceImpl();
    private final PaymentService paymentService = new PaymentServiceImpl();
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) 
                        throws IOException, ServletException {
        
        Customer loggedInUser = CustomerUtil.getLoggedInUser(request);
        Integer parkingPackageId = Integer.parseInt(request.getParameter("parkingPackageId"));
        
        // check if customer is registered another package in the current time
        Optional<Payment> currentPaymentOpt;
		try {
			currentPaymentOpt = this.paymentService.getCurrentPayment(loggedInUser.getID_customer());
						
			List<Payment> unpaidPayments = this.paymentService.getAllUnpaidPayment(loggedInUser.getID_customer());
			
			if (unpaidPayments != null && unpaidPayments.size() > 0) {
				response.sendRedirect(request.getContextPath() + "/parking-package/list?unpaidPayment=true");
				return;
			}
			
			if (currentPaymentOpt.isPresent()) {
			response.sendRedirect(request.getContextPath() + "/parking-package/list?currentPayment=true");
        	return;
        }

			
		} catch (CustomerNotFoundException e) {
			response.sendError(500);
			return;
		}
        
        try {
        	
        	// register parking-package for customer
            this.parkingPackageService.register(loggedInUser.getID_customer(), parkingPackageId);
            
        } catch (CustomerNotFoundException | ParkingPackageNotFoundException ex) {
        	
            Logger.getLogger(RegisterParkingPackageServlet.class.getName()).log(Level.SEVERE, null, ex);
            
        }
        
        response.sendRedirect(request.getContextPath() + "/parking-package/list?registerSuccessful=true");
    }
    
}
