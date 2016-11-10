/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.ajv002jspjdbc.dao.impl;

import com.leapfrog.ajv002jspjdbc.entity.Course;
import com.leapfrog.ajv002jspjdbc.dao.CourseDao;
import com.leapfrog.ajv002jspjdbc.dbutil.DbConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ruman dangol
 */
public class CourseDaoImpl implements CourseDao {
     DbConnection db=new DbConnection(); 

    @Override
    public List<Course> getAll() throws ClassNotFoundException, SQLException {
       List<Course> courseList=new ArrayList<>();
       db.open();
       String sql="SELECT * FROM courses";
       ResultSet rs=db.executeQuery(sql);
       while(rs.next()){
           Course c=new Course();
           c.setId(rs.getInt("course_id"));
           c.setName(rs.getString("course_name"));
           c.setDescription(rs.getString("course_description"));
           c.setFees(rs.getInt("fees"));
           c.setStatus(rs.getBoolean("status"));
           courseList.add(c);
           
       }
       db.close();
       return courseList;
       
    }
    
}
