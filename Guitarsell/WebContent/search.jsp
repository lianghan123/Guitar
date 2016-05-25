<%@ page import="java.sql.*,javax.sql.*,my.dao.DbUtil" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%response.setCharacterEncoding("UTF-8");%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
<title>Insert title here</title>
<link href="Css/bootstrap.css" rel="stylesheet">
<title>搜索显示</title>
</head>
<body>
<%
String wood=request.getParameter("keywords");
Connection conn = DbUtil.getConnection(); 
PreparedStatement stmt = conn.prepareStatement("select * from guitar where type like '%"+wood+"%'"); 
ResultSet rs=stmt.executeQuery(); 
%>	
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table">
				<thead>
					<tr>
						<th>
							琴弦数
						</th>
						<th>
							产品名称
						</th>
						<th>
							产品型号
						</th>
						<th>
							库存量
						</th>
					</tr>
				</thead>
				
<% 
while(rs.next()){ 
%>
<tr>  
<td > <%=rs.getString("number") %></td>  
<td ><%=rs.getString("name") %></td>  
<td ><%=rs.getString("type") %></td>
<td><%=rs.getString("inventory") %></td>
</tr> 
<%}  
 %>
 </table>
		</div>
	</div>
</div>
 <%  
    rs.close();  
    conn.close();  
 %>   	 	
<script src="Js/jquery.min。js"></script>
	<script src="Js/bootstrap.min.js"></script>
	<script src="Js/bootstrap.js"></script>
</body>
</html>