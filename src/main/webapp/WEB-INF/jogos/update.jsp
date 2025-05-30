<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Editar Jogo</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
<div class="container mt-4">
    <h1>Editar Jogo</h1>
    <form action="/jogos/update" method="post">
        <input type="hidden" name="id" value="${jogo.id}" />

        <div class="mb-3">
            <label class="form-label">Título:</label>
            <input type="text" name="titulo" value="${jogo.titulo}" class="form-control" required />
        </div>

        <div class="mb-3">
            <label class="form-label">Modo de Jogo:</label>
            <select name="modoDeJogo" class="form-select">
                <c:forEach var="modo" items="${modos}">
                    <option value="${modo.id}" ${modo.id == jogo.modoDeJogo.id ? 'selected' : ''}>
                        ${modo.descricao}
                    </option>
                </c:forEach>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">Gêneros:</label>
            <c:forEach var="genero" items="${generos}">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="generos" value="${genero.id}"
                           <c:if test="${jogo.generos.contains(genero)}">checked</c:if> />
                    <label class="form-check-label">${genero.nome}</label>
                </div>
            </c:forEach>
        </div>

        <div class="mb-3">
            <label class="form-label">Plataformas:</label>
            <c:forEach var="plataforma" items="${plataformas}">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="plataformas" value="${plataforma.id}"
                           <c:if test="${jogo.plataformas.contains(plataforma)}">checked</c:if> />
                    <label class="form-check-label">${plataforma.descricao}</label>
                </div>
            </c:forEach>
        </div>

        <button type="submit" class="btn btn-success">Atualizar</button>
        <a href="/jogos/list" class="btn btn-secondary">Cancelar</a>
    </form>
</div>
</body>
</html>
