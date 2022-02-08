package com.cg.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cg.model.Student;


public class StudentDaoImpl {
  
	JdbcTemplate jdbctemplate;

	public void setJdbctemplate(JdbcTemplate jdbctemplate) {
		this.jdbctemplate = jdbctemplate;
	}

	public int create(Student student) {
		String sqlQuery = "insert into student_info values(?,?,?)";
		return jdbctemplate.update(sqlQuery, student.getStuid(), student.getStuname(), student.getStumobile());
	}

	public List<Student> getAllStudents(int pageid,int total) {
		String sqlQuery = "select * from student_info order by stuid limit "+pageid+","+total;
		List<Student> list = jdbctemplate.query(sqlQuery, new RowMapper<Student>() {
			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student student = new Student();
				student.setStuid(rs.getInt("stuid"));
				student.setStuname(rs.getString("stuname"));
				student.setStumobile(rs.getLong("stumobile"));
				return student;
			}

		});
		return list;
	}

	public int delete(int stuid) {
		String sqlQuery = "delete from student_info where stuid=?";
		return jdbctemplate.update(sqlQuery, stuid);
	}

	public int update(Student student) {
		String sqlQuery = "update student_info set stuname=?,stumobile=? where stuid=?";
		return jdbctemplate.update(sqlQuery, student.getStuname(), student.getStumobile(), student.getStuid());
	}

	public Student findElementById(int stuid) {
		String sqlQuery = "select * from student_info where stuid=" + stuid;
		Student student=jdbctemplate.queryForObject(sqlQuery, new RowMapper<Student>() {
			@Override
			public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
				Student student = new Student();
				student.setStuid(rs.getInt("stuid"));
				student.setStuname(rs.getString("stuname"));
				student.setStumobile(rs.getLong("stumobile"));
				return student;
			}
		});
		return student;
	}

}
