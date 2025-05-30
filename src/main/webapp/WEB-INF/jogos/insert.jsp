<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Inserir Jogo</title>
    <link href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
<div class="container mt-4">
    <h1>Inserir Jogo</h1>
    <form action="/jogos/insert" method="post">
        <div class="mb-3">
            <label class="form-label">Título:</label>
            <input type="text" name="titulo" class="form-control" required />
        </div>

        <div class="mb-3">
            <label class="form-label">Modo de Jogo:</label>
            <select name="modoDeJogo" class="form-select">
                <c:forEach var="modo" items="${modos}">
                    <option value="${modo.id}">${modo.descricao}</option>
                </c:forEach>
            </select>
            <a href="/modos/insert" target="_blank" class="btn btn-outline-primary btn-sm ms-2" title="Adicionar novo modo de jogo">+ Novo</a>
        </div>

        <div class="mb-3">
            <label class="form-label">Gêneros:</label>
            <a href="/generos/insert" target="_blank" class="btn btn-outline-primary btn-sm ms-2 mb-2" title="Adicionar novo gênero">+ Novo</a>
            <c:forEach var="genero" items="${generos}">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="generos" value="${genero.id}" />
                    <label class="form-check-label">${genero.nome}</label>
                </div>
            </c:forEach>
        </div>

        <div class="mb-3">
            <label class="form-label">Plataformas:</label>
            <a href="/plataformas/insert" target="_blank" class="btn btn-outline-primary btn-sm ms-2 mb-2" title="Adicionar nova plataforma">+ Novo</a>
            <c:forEach var="plataforma" items="${plataformas}">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="plataformas" value="${plataforma.id}" />
                    <label class="form-check-label">${plataforma.descricao}</label>
                </div>
            </c:forEach>
        </div>

        <button type="submit" class="btn btn-success">Salvar</button>
        <a href="/jogos/list" class="btn btn-secondary">Voltar</a>
    </form>
</div>
</body>
</html>
