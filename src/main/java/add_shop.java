import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/add_shop")
@MultipartConfig(
		  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		  maxFileSize = 1024 * 1024 * 10,      // 10 MB
		  maxRequestSize = 1024 * 1024 * 100   // 100 MB
		)
public class add_shop extends HttpServlet {
	private static final long serialVersionUID = 1L;
        public add_shop() {
        super();
        
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("Html/text");
		
		PrintWriter out = response.getWriter();
		String sname =request.getParameter("sname");
		String oname=request.getParameter("oname");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String saddress=request.getParameter("saddress");
		String pin=request.getParameter("pin");
		
		String cstr=request.getParameter("cstr");
		String nbarber=request.getParameter("nbarber");
		
		
		final Part filePart = request.getPart("img");
	    final String fileName = getSubmittedFileName(filePart); // For Servlet 3.1.0 and higher filePart.getSubmittedFileName();
	    //final String path = getServletContext().getRealPath("/"+"images"+File.separator+fileName);
	    String path = "C:\\Users\\Mrinal sharma\\eclipse-workspace\\webcont\\src\\main\\webapp\\dashboard\\image\\"+fileName;
	    filePart.write(path);
		
	  out.print(path);
		    out.println(fileName);
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebarber","root","");
			Statement stmt = con.createStatement();
			String q1 = String.format("INSERT INTO `add_shop` (`id`, `sname`, `oname`, `phone`,`email`,`saddress`,`pin`,`cstr`,`nbarber`,`image`) VALUES (NULL,'%s', '%s','%s','%s','%s','%s','%s','%s','%s');",sname,oname,phone,email,saddress,pin,cstr,nbarber,fileName);
			int x = stmt.executeUpdate(q1);
			if (x > 0) {
	            out.print("Successfully Inserted");
				response.sendRedirect("http://localhost:2020/webcont/dashboard/main.jsp");
			}
	        else           
	            out.print("Insert Failed");
             
            con.close();
		}catch(Exception e) {
			System.out.print(e);
		}
	}
	
	private static String getSubmittedFileName(Part part) {
	    for (String cd : part.getHeader("content-disposition").split(";")) {
	        if (cd.trim().startsWith("filename")) {
	            String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
	            return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
	        }
	    }
	    return null;
	}

}
