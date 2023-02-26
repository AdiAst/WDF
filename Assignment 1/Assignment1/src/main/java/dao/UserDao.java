package dao;

import java.sql.*;

import beans.User;


public class UserDao {
	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/community_portal","root","");
		}catch(Exception e){System.out.println(e);}
		return con;
	}
	public static int register(User u){
		int status=0;
		try{

			Connection con=getConnection();
			PreparedStatement ps;
			ps=con.prepareStatement("insert into userprofile(firstName,lastname) VALUES (?,?)");
			ps.setString(1,u.getFirstname());
			ps.setString(2,u.getLastname());
			
			status=ps.executeUpdate();
			
			ps=con.prepareStatement("insert into userlogin(userEmail,userPassword,userID,roleID) VALUES (?,?,(SELECT userID FROM userprofile ORDER BY userID DESC LIMIT 1),1)");
			ps.setString(1,u.getEmail());
			ps.setString(2,u.getPassword());
			status=ps.executeUpdate();
			
		}catch(Exception e){System.out.println(e);}
		return status;
	}
}
