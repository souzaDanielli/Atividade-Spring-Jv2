<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Plataformas</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-4">
        <h1>Plataformas</h1>
        <a href="/plataformas/insert" class="btn btn-primary mb-3">Nova Plataforma</a>
        <table class="table table-striped">
            <tr>
                <th>ID</th>
                <th>Descrição</th>
                <th>Ações</th>
            </tr>
            <c:forEach var="p" items="${plataformas}">
                <tr>
                    <td>${p.id}</td>
                    <td>${p.descricao}</td>
                    <td>
                        <a href="/plataformas/update/${p.id}" class="btn btn-primary btn-sm">Editar</a>
                        <a href="/plataformas/delete/${p.id}" class="btn btn-danger btn-sm">Remover</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
