<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Jogos</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container mt-4">
        <h1>Jogos</h1>
        <a href="/jogos/insert" class="btn btn-primary mb-3">Novo Jogo</a>
        <table class="table table-striped">
            <tr>
                <th>ID</th>
                <th>Título</th>
                <th>Modo de Jogo</th>
                <th>Gêneros</th>
                <th>Plataformas</th>
                <th>Ações</th>
            </tr>
            <c:forEach var="j" items="${jogos}">
                <tr>
                    <td>${j.id}</td>
                    <td>${j.titulo}</td>
                    <td>${j.modoDeJogo.descricao}</td>
                    <td>
                        <c:forEach var="g" items="${j.generos}">
                            ${g.nome}<br />
                        </c:forEach>
                    </td>
                    <td>
                        <c:forEach var="p" items="${j.plataformas}">
                            ${p.descricao}<br />
                        </c:forEach>
                    </td>
                    <td>
                        <a href="/jogos/update/${j.id}" class="btn btn-primary btn-sm">Editar</a>
                        <a href="/jogos/delete/${j.id}" class="btn btn-danger btn-sm">Remover</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
