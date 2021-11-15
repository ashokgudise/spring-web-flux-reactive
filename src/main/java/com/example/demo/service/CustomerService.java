package com.example.demo.service;

import com.example.demo.model.entity.Customer;
import com.example.demo.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository customerRepository;

   /* public void doWork() {
        customerRepository.deleteAll().block();
    }*/

    public Mono<Customer> findCustomerById(long customerId){
        return this.customerRepository.findById(customerId);
    }

    public Flux<Customer> findAll(){
        return this.customerRepository.findAll();
    }

    public Mono<Customer> addCustomer(Customer customer){
        return this.customerRepository.save(customer);
    }

    public Mono<Customer> updateCustomer(final Customer customer) {
        return customerRepository.findById(customer.getCutomerId())
                .flatMap(s -> {
                    System.out.println("Found Customer ID");
                    return customerRepository.save(customer);
                });
    }
}
