package com.person.personservice.entity;

import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
public class PersonController {
    private static final List<Person> list;

    static {
        list = new ArrayList<>();
        list.add(new Person("michael", "garcia"));
        list.add(new Person("daniel", "garcia"));
    }

    @GetMapping("/person")
    List<Person> Person() {
        return list;
    }

    @GetMapping("/person/{id}")
    Person one(@PathVariable int id) {
        return list.get(id);
    }

    @PostMapping("/person")
    Person newPerson(@RequestBody Person newPerson) {
        list.add(newPerson);
        return newPerson;
    }

    @PutMapping("/person/{id}")
    public Person update(@RequestBody Person nuevaPersona, @PathVariable int id) {
        list.set(id, nuevaPersona);
        return nuevaPersona;
    }

    @DeleteMapping("/person/{id}")
    void deletePerson(@PathVariable int id) {
        list.remove(id);
    }

}
