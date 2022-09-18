

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/HTML");
		PrintWriter out = response.getWriter();
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		System.out.print(email);
		System.out.print(pass);
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebarber","root","");
			Statement stmt = con.createStatement();
			
			String strQuery="SELECT * FROM registraction";
			String user="";
			String uName="";
			String dPass="";
			String status="";
			Boolean bool = false;
			
			//Session Object
			HttpSession session=request.getSession();
			
			//End
			
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(strQuery);
			
			while(rs.next()) {
//				out.print("hey");
				user=rs.getString("email");
				dPass=rs.getString("pass");
				status=rs.getString("status");
				uName=rs.getString("name");
				if(user.trim().equals(email)) {
					if(dPass.trim().equals(pass)) {
						bool =true;
//						out.print("hey");
						session.setAttribute("userName", user);
						session.setAttribute("userStatus", status);
						session.setAttribute("uName", uName);
					}
				}
			}
			
			if(bool) {
				response.sendRedirect("http://localhost:2020/webcont/dashboard/main.jsp?seccess");
				out.print("you are login successfully");
			}else {
				response.sendRedirect("http://localhost:2020/webcont/Login.html");
				out.print("something Wrong ...!");
			}
			
			
			out.close();
		}catch(Exception e) {
			System.out.print(e);
		}
	}

}
