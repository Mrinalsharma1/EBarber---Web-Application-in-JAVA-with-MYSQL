

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter sc = response.getWriter();
		String fname = request.getParameter("email1");
		String pswd = request.getParameter("pswd");
		PrintWriter out = response.getWriter();
		out.print(fname);
		
		out.print(us);
		out.print(pw);
		
		int id=1;
		//inserting data into database
		String q1 = "insert into table1 values('" +id+ "', '" +us+
            "', '" +pw+ "')";
		int x = stmt.executeUpdate(q1);
		if (x > 0)           
            System.out.println("Successfully Inserted");           
        else           
            System.out.println("Insert Failed");
		
		ResultSet rs = stmt.executeQuery("select * from table1");
//		while(rs.next())  {
//			out.println(rs.getString("user"));
//		
//		}
		
	}

}
