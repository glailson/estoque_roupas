<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Estoque</title>
</head>
<body>
	<div>    
       <h2>Estoque Peças </h2>
       <jsp:useBean id="estoque" class= "estoque.EstoquePecas"> 
          <jsp:setProperty name="estoque" property="tipo" value="Blusas" /> 
          <jsp:setProperty name="estoque" property= "marca" value="SAINT LAURENT" />
          <jsp:setProperty name="estoque" property="quantidade" value="100" /> 
          <jsp:setProperty name="estoque" property= "valor" value="15025.50" /> 
       </jsp:useBean> 
       Tipo:       <jsp:getProperty name= "estoque" property="tipo" /><br/>
       Marca:      <jsp:getProperty name= "estoque" property="marca" /><br/>
       Quantidade: <jsp:getProperty name= "estoque" property="quantidade" /><br/>
       Valor:      <jsp:getProperty name= "estoque" property="valor" /><br/>
       
       <%
            java.text.SimpleDateFormat sdf = 
            new java.text.SimpleDateFormat("dd/MM/yyy");
            String dataFormatada = sdf.format(new java.util.Date()); 
       %> 
       <h2><%=  dataFormatada%>  </h2> 
    </div>
</body>
</html>