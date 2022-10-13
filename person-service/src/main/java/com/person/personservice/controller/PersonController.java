package com.person.personservice.controller;

import com.person.personservice.entity.Person;
import com.person.personservice.repository.PersonRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class PersonController {
    PersonRepository personRepository;

    public PersonController(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    @GetMapping("/person")
    List<Person> Person() {
        return personRepository.findAll();
    }

    @GetMapping("/person/{id}")
    Person one(@PathVariable int id) {
        return personRepository.findById(id).orElse(null);
    }

    @PostMapping("/person")
    Person newPerson(@RequestBody Person newPerson) {
        newPerson.setIdCiudad(1);
        return personRepository.save(newPerson);
    }

    @PutMapping("/person/{id}")
    public Person update(@RequestBody Person nuevaPersona, @PathVariable int id) {
        Optional<Person> personOptional = personRepository.findById(id);
        if (personOptional.isPresent()) {
            Optional<Person> person = personOptional.map(p -> {
                p.setNombre(nuevaPersona.getNombre());
                p.setApellido(nuevaPersona.getApellido());
                return p;
            });
            return personRepository.save(person.get());
        } else {
            return null;
        }
    }

    @DeleteMapping("/person/{id}")
    void deletePerson(@PathVariable int id) {
        Optional<Person> personOptional = personRepository.findById(id);
        personOptional.ifPresent(person -> personRepository.delete(person));
    }

}
