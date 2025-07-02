package com.library.art.controller;

import com.library.art.model.Furniture;
import com.library.art.repo.FurnitureRepo;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class AppController {

    @Value("${spring.application.name}")
    String appName;

    @Autowired
    private FurnitureRepo furnitureRepo;

    @GetMapping(path = {"/", "/console"})
    public String homePage(Model model) {
        //model.addAttribute("name", "Akhi" );
       // model.addAttribute("message", "");
        return "console";
    }

    @GetMapping("/addFurniture")
    public String addFurniture(Model model) {
        model.addAttribute("appName", appName);
        model.addAttribute("type", "");
        model.addAttribute("quantity", "");
        return "addFurniture";
    }

    @ResponseBody
    @PostMapping("/submitFurniture")
    public Map<String, Object> submitFurniture(HttpServletRequest request) {
        Map<String, Object> result = new HashMap<>();
        try {
            String type = request.getParameter("type");
            Integer quantity = Integer.valueOf(request.getParameter("quantity"));
            String colors = request.getParameter("colors");

            System.out.println("type: " + type);
            System.out.println("quantity: " + quantity);
            System.out.println("color: "+ colors);



            //System.out.println("HI");
            Furniture furniture = new Furniture();

            //System.out.println("got to here");
            furniture.setQuantity(quantity);
            furniture.setType(type);
            furniture.setColors(colors);

            System.out.println("yo i'll solve it");
            furnitureRepo.save(furniture);

            System.out.println("dj revolves it");

            result.put("status", "success");
            result.put("redirect", "/console");

        } catch (Exception e) {

            result.put("status", "error");
            result.put("failure", e.getMessage());
            throw new RuntimeException(e);
        }

        return result;
    }






    @PostMapping("/deleteFurniture")
    @ResponseBody
    public Map<String, Object> deleteBook(@RequestBody Map<String, Object> body) {
        Map<String, Object> result = new HashMap<>();
        try {
            Long id = Long.parseLong(body.get("id").toString());

            furnitureRepo.findById(id);
            furnitureRepo.deleteById(id);

            result.put("status", "success");
            result.put("redirect", "/console");
        } catch (Exception e) {
            result.put("status", "error");
            result.put("message", e.getMessage());
        }
        return result;
    }



}
