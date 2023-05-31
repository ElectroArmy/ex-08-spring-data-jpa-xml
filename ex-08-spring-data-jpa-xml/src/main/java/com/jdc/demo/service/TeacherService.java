package com.jdc.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.jdc.demo.service.entity.Teacher;
import com.jdc.demo.service.repo.TeacherRepo;


import jakarta.persistence.EntityNotFoundException;


@Service
@Transactional(readOnly = true)
public class TeacherService {
	
	@Autowired
	private TeacherRepo repo;
	
	public List<Teacher> searchAll() {
		return repo.findAll();
	}

	public Teacher findById(Integer id) {
		return repo.findById(id).orElseThrow(EntityNotFoundException::new);
	}

	@Transactional
	public Integer save(Teacher form) {
		return repo.save(form).getId();
	}

	
	public List<Teacher> search(Optional<String> name, Optional<String> phone) {
		
		
		return repo.findAll(withName(name).and(withPhone(phone)));
	}
	
	//TODO:: If we search with name without normal causes by no data. 
	//       We cannot use second name and one name. Myat Su Wai, We can use only Myat, We cannot Su and Wai on Search in first .
	
	private Specification<Teacher> withName(Optional<String> data) {
		return data.filter(StringUtils::hasLength).isEmpty() ? Specification.where(null) :
			(root, query, cb) -> cb.like(cb.lower(root.get("name")), data.get().toLowerCase().concat("%"));
	}
	
	private Specification<Teacher> withPhone(Optional<String> data) {
		
		return data.filter(StringUtils::hasLength).isEmpty() ? Specification.where(null) : 
			(root, query, cb) -> cb.like(root.get("phone"), data.get().concat("%"));
	}
	
	
	
}