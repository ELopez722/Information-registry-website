package org;

import java.sql.*;

public class AddressB {

    public AddressB() {
    }

    ;
    
    public int validate(String s) {
        if (s == null || (s.compareTo("") == 0)) {
            return 0; //invalid
        } else {
            return 1; //valid
        }
    }

    public void addEntry(String fname, String lname, String mail) throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        //load the JDBC driver class
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/WebClass", "root", "");
        PreparedStatement statement = con.prepareStatement("INSERT INTO MyGuests (firstname, lastname, email) VALUES (?, ?, ?)");
        /*sql structure to select instances from the table*/
        statement.setString(1, fname);
        statement.setString(2, lname);
        statement.setString(3, mail);
        statement.execute();
        /*execution of the database query*/
    }

    public void deleteEntry(int val) throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        //load the JDBC driver class
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/WebClass", "root", "");
        PreparedStatement statement = con.prepareStatement("DELETE from myguests where id = ?");
        /*sql structure to select instances from the table*/
        statement.setInt(1, val);
        statement.execute();
        /*execution of the database query*/
    }

    public String table() throws Exception {
        System.out.println("I'm running");
        Class.forName("com.mysql.jdbc.Driver");
        //load the JDBC driver class
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/WebClass", "root", "");
        PreparedStatement statement = con.prepareStatement("Select * from MyGuests");
        /*sql structure to select instances from the table*/
        ResultSet result = statement.executeQuery();
        /*execution of the database query*/
        String s = "";
        while (result.next()) {
            s = s + "<tr> <td>" + result.getString(1) + "</td> <td>" + result.getString(2) + "</td> <td>"
                    + result.getString(3) + "</td> <td>" + result.getString(4)
                    + "</td> <td>DELETE ENTRY: <input type=\"submit\" name=\"id\" value=\"" + result.getString(1) + "\" </td>\n"
                    + "</tr>";
            
            /*print the result with the attributes from the table */
        }
        return s;
    }
    public String search(String find) throws Exception {
        System.out.println("I'm running");
        Class.forName("com.mysql.jdbc.Driver");
        //load the JDBC driver class
        Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/WebClass", "root", "");
        PreparedStatement statement = con.prepareStatement("SELECT * FROM myguests WHERE firstname LIKE ?");
        /*sql structure to select instances from the table*/
        statement.setString(1, find);
        ResultSet result = statement.executeQuery();
        /*execution of the database query*/
        String s = "";
        while (result.next()) {
            s = s + "<tr> <td>" + result.getString(1) + "</td> <td>" + result.getString(2) + "</td> <td>"
                    + result.getString(3) + "</td> <td>" + result.getString(4) + "</td></tr>";
            /*print the result with the attributes from the table */
        }
        return s;
    }
}
