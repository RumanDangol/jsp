/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.ajv002jspjdbc.dao;

import com.leapfrog.ajv002jspjdbc.entity.Course;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author ruman dangol
 */
public interface CourseDao {
    
    List<Course> getAll() throws ClassNotFoundException,SQLException;
}
