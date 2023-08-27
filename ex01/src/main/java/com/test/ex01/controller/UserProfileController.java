package com.test.ex01.controller;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.test.ex01.dto.UserProfile;
import com.test.ex01.mapper.UserProfileMapper;

@RestController
public class UserProfileController {
	private UserProfileMapper mapper;
	
	public UserProfileController(UserProfileMapper mapper) {
		this.mapper = mapper;
	}
	
	@GetMapping("/user/{id}")
	public UserProfile getUserProfile(@PathVariable String id) {
		return mapper.getUserProfile(id);
	}
	
	@GetMapping("/user/all")
	public List<UserProfile> getUserProfileList() {
		return mapper.getUserPorofileList();
	}
	
	@PostMapping("/user/{id}")
	public void insertUserProfile(@PathVariable String id, @PathVariable String name,
            @PathVariable String phone, @PathVariable String address) {
		mapper.insertUserProfile(id, name, phone, address);
	}
	
	@PutMapping("/user/{id}")
	public void  updateUserProfile(@PathVariable String id, @PathVariable String name,
            @PathVariable String phone, @PathVariable String address) {
		mapper.updateUserProfile(id, name, phone, address);
	}
	
	@DeleteMapping("/user/{id}")
	public void deleteUserProfile(@PathVariable String id) {
		mapper.deleteUserProfile(id);
	}
}
