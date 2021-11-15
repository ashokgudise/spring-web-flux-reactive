package com.example.demo.contoller;

import com.example.demo.model.entity.Customer;
import com.example.demo.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.thymeleaf.spring5.context.webflux.IReactiveDataDriverContextVariable;
import org.thymeleaf.spring5.context.webflux.ReactiveDataDriverContextVariable;
import reactor.core.publisher.Mono;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/")
    public String index() {
        return "redirect:demo";
    }

    @RequestMapping("/demo")
    public String demo(final Model model) {
        // loads 1 and display 1, stream data, data driven mode.
        IReactiveDataDriverContextVariable reactiveDataDrivenMode =
                new ReactiveDataDriverContextVariable(customerService.findAll(), 1);
        model.addAttribute("customers", reactiveDataDrivenMode);
        // classic, wait repository loaded all and display it.
        //model.addAttribute("movies", movieRepository.findAll());
        return "customer-demo";
    }

   /* @RequestMapping(value="/customerUpdate", method = RequestMethod.POST)
    public String customerUpdate(@ModelAttribute(value="customer") Customer customer, Model model) {
        System.out.println("Inside CustomerUpdate   \t"+customer.getCutomerId());
        this.customerService.updateCustomer(customer.getCutomerId(), customer);
        return "demo";
    }*/

    @RequestMapping(value="/customerUpdateToEdit", method = RequestMethod.POST)
    public String customerSelectionToUpdate(@ModelAttribute(value="customer") Customer customer, Model model) {
        model.addAttribute("customer", customer);
        return "customer-update-demo";
    }

    @PostMapping("/customerUpdate")
    public String updateStudent( @ModelAttribute(value="customer") Customer customer,
                                Model model) {

        System.out.println("Before Update");
        System.out.println("Age: \t"+customer.getAge());
        System.out.println("Customer Name: \t"+customer.getCustomerName());
        System.out.println("Address: \t"+customer.getAddress());
        System.out.println("City: \t"+customer.getCity());
        System.out.println("Country: \t"+customer.getCountry());
        System.out.println("PostalCode \t"+customer.getPostalCode());

        this.customerService.updateCustomer(customer);
        IReactiveDataDriverContextVariable reactiveDataDrivenMode =
                new ReactiveDataDriverContextVariable(customerService.findAll(), 1);
        model.addAttribute("customers", reactiveDataDrivenMode);
        return "demo";
    }

}
