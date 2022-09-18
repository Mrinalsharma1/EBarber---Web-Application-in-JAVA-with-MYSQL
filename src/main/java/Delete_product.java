

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Delete_product")
public class Delete_product extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Delete_product() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String id1 = request.getParameter("id");
		
		int id = Integer.parseInt(id1);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/ebarber","root","");
			Statement stmt = con.createStatement();
			
			out.println(id);
		
			//inserting data into database
			String q1 = String.format("DELETE FROM `add_product` WHERE `add_product`.`id` = '%d'",id);
			int x = stmt.executeUpdate(q1);
			if (x > 0)   
			{
				  out.print("Successfully Inserted"); 
				  response.sendRedirect("http://localhost:2020/webcont/dashboard/update_pdt.jsp?status=success");
			} 
	        else  
	        {	
	        	out.print("Insert Failed");
	        	response.sendRedirect("http://localhost:2020/webcont/dashboard");
	        }           
             
            con.close();
		} catch(Exception e)
        {
            System.out.println(e);
        }
	}

}
