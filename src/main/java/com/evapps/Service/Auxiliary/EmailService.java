package com.evapps.Service.Auxiliary;

import com.evapps.Entity.Receipt;
import com.evapps.Entity.User;
import com.sendgrid.*;
import org.springframework.stereotype.Service;

import java.io.IOException;


@Service
public class EmailService {


    public boolean sendEmail(String emailTo, String Subject, String theContent)
    {

        Email from = new Email("management@atlanticshop.com");
        Email to = new Email(emailTo);
        Content content = new Content("text/plain", theContent+"\n\n\nEmail Service by Atlantic Shop");
        Mail mail = new Mail(from, Subject, to, content);

//        SendGrid sg = new SendGrid(System.getenv("SENDGRID_API_KEY"));
        SendGrid sg = new SendGrid("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");
        Request request = new Request();
        try {
            request.setMethod(Method.POST);
            request.setEndpoint("mail/send");
            request.setBody(mail.build());
            Response response = sg.api(request);
            System.out.println("Sengrid Status Code:"+response.getStatusCode());
            System.out.println("Sendgrid Errpr Body:"+response.getBody());
            System.out.println("Sendgrid Headers:"+response.getHeaders());
        } catch (IOException ex) {
            System.out.println("ERROR WITH THE EMAIL SERVER, CONTAC YOUR ADMIN");
            return false;
        }
        return true;
    }

    public boolean sendOrderConfirmationEmail(Receipt receipt)
    {

        String content = "Thanks for your order!\n\n"+"Order#"+receipt.getFiscalCode();
        return sendEmail(receipt.getUser().getEmail(),
                "Order Confirmation from atlantic",
                content);

    }

    public boolean sendUserRegistrationConfirmation(User user)
    {

        String content = "Welcome to atlantic shop "+user.getFullName()+"!!\n\n" +
                "Here are your credentials:\n\n" +
                "Email: "+ user.getEmail() + "\n\n" +
                "Password: " + user.getPassword() + "\n\n" +
                "Enter now: by copying " + "'localhost:8090'" + " in your browser URL.";
        return sendEmail(user.getEmail(),
                "Welcome to Atlantic Shop!",
                content);

    }

}
