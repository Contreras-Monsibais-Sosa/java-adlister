<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String str=request.getParameter("queryString");
    try {
        Connection con;
// Get a Connection to the database
        con = DriverManager.getConnection(
                config.getUrl(),
                config.getUsername(),
                config.getPassword()
        );
//Add the data into the database
        String sql = "SELECT ads FROM pokemon_adlister_db WHERE title LIKE '"+str+"%' LIMIT 10";
        Statement stm = con.createStatement();
        stm.executeQuery(sql);
        ResultSet rs= stm.getResultSet();
        while (rs.next ()){
            out.println("<li onclick='fill("+rs.getString("title")+");'>"
                    +rs.getString("title")+"</i>");
        }}catch(Exception e){
        out.println("Exception is ;"+e);
    }
%>
