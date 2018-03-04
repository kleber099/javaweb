<%@page import="java.util.List"%>
<%@page import="br.com.cursoweb.model.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%!
    private String toUpper(String valor) {
        return valor.toUpperCase();
    }
%>
<%
    List<Usuario> usuarios = new ArrayList<Usuario>();
    usuarios.add(new Usuario("Fabio", "fabio@gmail.com", "M"));
    usuarios.add(new Usuario("Maria", "maria@gmail.com", "F"));
    usuarios.add(new Usuario("Jose", "jose@gmail.com", "M"));
    usuarios.add(new Usuario("Pedro", "pedro@gmail.com", ""));
    usuarios.add(new Usuario("Ana", "ana@gmail.com", "F"));
    pageContext.setAttribute("usuarios", usuarios);
%> 
<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Lista de Usuarios</title>
</head>
<body>
	<%@ include file="/topo.jsp" %>
	<h3>Usuarios JSP</h3>
	<c:if test="${not empty usuarios}">
	    <ul>
	    	<c:forEach items="#{usuarios}" var="usuario">
		        <li>
		        	<a href="mailto:${usuario.email}">
		        		${usuario.nome}
		        	</a>
		        	-
		        	<c:choose>
		        		<c:when test="${usuario.sexo eq 'M'}">Masculino</c:when>
		        		<c:when test="${usuario.sexo eq 'F'}">Feminino</c:when>
		        		<c:otherwise>Nao informado</c:otherwise>
		        	</c:choose>
		        </li>
	    	</c:forEach>
	    </ul>
	</c:if>
</body>
</html>