package com.attendance.system.api.v1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.attendance.system.service.AttendanceService;

@RestController
@RequestMapping("/api/v1/session")
public class ApiSessionController {

	@Autowired
	private AttendanceService attendanceService;

	@GetMapping("start/{course}/{subject}/{sem}/{div}/{fid}")
	public ResponseEntity<String> startSession(@PathVariable("course") String course_id,
			@PathVariable("subject") String subject_id, @PathVariable("sem") String sem_id,
			@PathVariable("div") String division, @PathVariable("fid") String facultyId) {
		return attendanceService.startSession(course_id, subject_id, sem_id, division, facultyId);
	}

	@GetMapping("stop/{course}/{subject}/{sem}/{div}/{fid}")
	public ResponseEntity<String> stopSession(@PathVariable("course") String course_id,
			@PathVariable("subject") String subject_id, @PathVariable("sem") String sem_id,
			@PathVariable("div") String division, @PathVariable("fid") String facultyId) {
		return attendanceService.stopSession(course_id, subject_id, sem_id, division, facultyId);
	}
}