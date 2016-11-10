/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.ajv002jspjdbc.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ruman dangol
 */
public class DbConnection {

    private Connection conn=null;
    private PreparedStatement stmt;
 
    public void open() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/enquiry_manager", "root", null);

        
    }
    
    public ResultSet executeQuery(String sql)throws SQLException{
        stmt=conn.prepareStatement(sql);
        return stmt.executeQuery();
    }
    public void close() throws SQLException{
        if(conn!=null && !conn.isClosed()){
            conn.close();
            conn=null;
        }
    }

}
