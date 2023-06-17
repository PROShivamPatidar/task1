<%@page import="java.sql.*"%>
  
                        <html>
                            
                            <body>
                                <center>
    <%
                        String s1=request.getParameter("b2");
                        if(s1!=null)
                        {
         String s11=request.getParameter("n1");
         String s22=request.getParameter("n2"); 
         String s33=request.getParameter("n3");
          String s44=request.getParameter("n4");
          
        try     
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///active20?useSSL=false","root","9550");
            Statement st=con.createStatement();
            st.executeUpdate("update active set name='"+s22+"',email='"+s33+"',mob='"+s44+"' WHERE empid='"+s11+"'");
                      out.print("data updated"); 
                      con.close();
        }
        catch(Exception e1)
        {
            out.print(e1);
        }
    }
%>
  </center>                   
</body>
</html>