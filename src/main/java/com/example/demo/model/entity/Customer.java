package com.example.demo.model.entity;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Table("CUSTOMER")
@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
public class Customer{

    @Id
    @Column("CUSTOMER_ID")
    private long cutomerId;
    @Column("AGE")
    private int age;
    @Column("SEX")
    private String sex;
    @Column("CUSTOMER_NAME")
    private String customerName;
    @Column("CONTACT_NAME")
    private String contactName;
    @Column("ADDRESS")
    private String address;
    @Column("CITY")
    private String city;
    @Column("POSTAL_CODE")
    private String postalCode;
    @Column("COUNTRY")
    private String country;
}
