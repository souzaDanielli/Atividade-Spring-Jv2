<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gêneros</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
            <h1>Gêneros</h1>
            <a href="/generos/insert" class="btn btn-primary mb-3">Novo Gênero</a>
            <table class="table table-striped">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Ações</th>
                </tr>
                <c:forEach var="g" items="${generos}">
                    <tr>
                        <td>${g.id}</td>
                        <td>${g.nome}</td>
                        <td>
                            <a href="/generos/update/${g.id}" class="btn btn-primary btn-sm">Editar</a> | 
                            <a href="/generos/delete/${g.id}" class="btn btn-danger btn-sm">Remover</a>

                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
</body>
</html>