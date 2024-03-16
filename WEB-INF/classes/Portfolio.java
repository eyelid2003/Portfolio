import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.io.*;
public class Portfolio extends HttpServlet
{
    private static final long serialVersionUID= 1L;
    protected void doPost(HttpServletRequest req ,HttpServletResponse res) throws ServletException,IOException
    {
        PrintWriter p=res.getWriter();
        String name =req.getParameter("name");
        String email =req.getParameter("email");
        String review =req.getParameter("review");
        RequestDispatcher dis=null;
        HttpSession htps=req.getSession();
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio","root","root");
            String query=" insert into portfolio (name,email,review) values ('"+name+"','"+email+"','"+review+"') ";
            PreparedStatement ps=con.prepareStatement(query);
            int i=ps.executeUpdate();
            
            if(i==1)
            {
                htps.setAttribute("sucess","Review Send to the Admin");
                res.sendRedirect("index.jsp");
                return;
                //dis=req.getRequestDispatcher("login.jsp");
            }
            else
            {
                htps.setAttribute("failed","something iss wrong");
                res.sendRedirect("index.jsp");
                return;
                //dis=req.getRequestDispatcher("index.jsp");
            }
        }
        catch(Exception e)
        {
            htps.setAttribute("error","sothing is wrong");
            res.sendRedirect("index.jsp");
            return;
        }
    }
}