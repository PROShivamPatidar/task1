<%@page import="java.sql.*" %>
<%
       String s1=request.getParameter("b1");
                        if(s1!=null)
                                {
String s11=request.getParameter("ur");
try
{
Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///active20?useSSL=false","root","9550");
            Statement st=con.createStatement();
            st.executeUpdate("delete from active where empid='"+s11+"'");
            out.print("data deleted");
            con.close();
}
                              
catch(Exception e)
{
out.println(e);
}
                                }
%>
    