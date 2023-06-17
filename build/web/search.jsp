<%@page import="java.sql.*" %>                        
<html>
    <body>
        
        <center>
<%
                        
                        {
                        String s11=request.getParameter("u1");
                        try
                        {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql:///active20?useSSL=false","root","9550");
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery("select * from active where empid='"+s11+"'");
                        if(rs.next())
                        {
                        %>
<form action="Update.jsp">
                        <table cellpadding="12">
                
    
<tr>
<td>employee id:-</td>
<td><input type="text" value=<%= rs.getString(1)%> name="n1" class="A"></td>
</tr>

<tr>                                 
<td>Name</td>
 <td><input type="text" value=<%= rs.getString(2)%> name="n2" class="A"></td>
</tr>

<tr>
<td>email id:-</td>
<td><input type="text" value=<%= rs.getString(3)%> name="n3" class="A"></td>
</tr>

<tr>
<td>mobile no:-</td>
<td><input type="text" value=<%= rs.getString(4)%> name="n4" class="A"></td>
</tr>

<tr>
<th colspan="2"><input type="submit" class="B" name="b2" value="update"></th>
</tr>

</table>
</form>
<%
    }
        else
     {
        // out.println("invalid roll.no");
         response.sendRedirect("Search.jsp?s1=invalid Rollno");
     }
     con.close();
    }
    catch(Exception e)
    {
        out.println(e);
    }
}
%>
                        
</center>                   
</body>
</html>