<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modos de Jogo</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-4">
        <h1>Modos de Jogo</h1>
        <a href="/modos/insert" class="btn btn-primary mb-3">Novo Modo</a>
        <table class="table table-striped">
            <tr>
                <th>ID</th>
                <th>Descrição</th>
                <th>Ações</th>
            </tr>
            <c:forEach var="m" items="${modos}">
                <tr>
                    <td>${m.id}</td>
                    <td>${m.descricao}</td>
                    <td>
                        <a href="/modos/update/${m.id}" class="btn btn-primary btn-sm">Editar</a>
                        <a href="/modos/delete/${m.id}" class="btn btn-danger btn-sm">Remover</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
