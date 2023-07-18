package com.example.demo.service;

import com.example.demo.entity.People;
import com.example.demo.dao.PeopleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PeopleServiceImpl implements PeopleService {

    @Autowired
    private PeopleRepository peopleRepository;
    @Override
    public List<People> getAllEmployees() {
        return null;
    }

    @Override
    public void saveEmployee(People employee) {

    }

    @Override
    public People getEmployee(int id) {
        return null;
    }

    @Override
    public void deleteEmployee(int id) {

    }

    @Override
    public List<People> findAllByUsername(String username){
        List<People> people = peopleRepository.findAllByUsername(username);
        return people;
    }
}
