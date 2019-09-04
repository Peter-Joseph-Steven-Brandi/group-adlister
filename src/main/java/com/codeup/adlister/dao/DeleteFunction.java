package com.codeup.adlister.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DeleteFunction
{

    public static void main(String[] args)
    {
        try
        {
            String myDriver = "org.gjt.mm.mysql.Driver";
            String myUrl = "jdbc:mysql://localhost/test";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "codeup");


            String query = "SET FOREIGN_KEY_CHECKS=0;" +
                    "delete from ads where id = ads.id;" +
                    "SET FOREIGN_KEY_CHECKS=1";
            PreparedStatement preparedStmt = conn.prepareStatement(query);
//            preparedStmt.setInt(1, 3);

            preparedStmt.execute();

            conn.close();
        }
        catch (Exception e)
        {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        }

    }
}