package com.person.personservice.entity;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class PaisController {

    private static final List<Pais> pais;

    static {
        pais = new ArrayList<>();
        pais.add(new Pais("lituania"));
        pais.add(new Pais("eslovaquia"));

    }

    @GetMapping("/pais")
    List<Pais> Pais() {
        return pais;
    }






}
