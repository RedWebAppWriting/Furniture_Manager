package com.library.art.controller;


import com.library.art.model.Furniture;
import com.library.art.repo.FurnitureRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/furnitures")
public class FurnitureController {

    @Autowired
    private FurnitureRepo furnitureRepository;

    @GetMapping("/allFurnitures")
    public Iterable<Furniture>  findAll(){
        return furnitureRepository.findAll();
    }



}
