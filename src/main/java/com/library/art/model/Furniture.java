package com.library.art.model;

import jakarta.persistence.*;
import org.springframework.data.annotation.Id;

@Entity
@Table(name="furniture")
public class Furniture {
    @jakarta.persistence.Id
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column (nullable = false, unique = true)
    private String type;

    @Column (nullable = false)
    private Integer quantity;

    @Column (nullable = false)
    private String colors;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public String getColors(){return colors;}

    public void setColors(String colors){this.colors= colors;}

    public String getType(){return type;}

    public void setType(String type){
        this.type = type;
    }

    public Integer getQuantity() {return quantity;}

    public void setQuantity(Integer quantity){
        this.quantity = quantity;
    }
}
