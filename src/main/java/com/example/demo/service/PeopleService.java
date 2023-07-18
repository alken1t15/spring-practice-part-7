package com.example.demo.service;

import com.example.demo.entity.People;

import java.util.List;

public interface PeopleService {
    public List<People> getAllEmployees();

    public void saveEmployee(People employee);

    public People getEmployee(int id);

    public void deleteEmployee(int id);

    public List<People> findAllByUsername(String username);
}
