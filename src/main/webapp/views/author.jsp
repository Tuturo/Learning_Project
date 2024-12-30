<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page import="domain.Author"%>
<%
  Author r1 = new Author(1L, "Василий");
  Author r2 = new Author(2L, "Пётр");
  Author r3= new Author(3L, "Александр");
  Author r4 = new Author(4L, "Вадим");
  Author[] authors = new Author[]{r1, r2, r3, r4};
  int length = authors.length;
  pageContext.setAttribute("authors", authors);
%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8"> <title>Авторы</title>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"> <title>Authors</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="../css/bootstrap.min.css"> <!-- jQuery -->
  <style>

  </style>
</head>
<body>
<div class="container-fluid"> <jsp:include page="/views/header.jsp" /> <div class="container-fluid">
  <div class="row justify-content-start "> <div class="col-8 border bg-light px-4">
    <h3>Список авторов</h3>
    <table class="table">
      <thead>
      <tr>
        <th scope="col">Код</th>
        <th scope="col">Имя</th>
        <th scope="col">Фамилия</th>
        <th scope="col">Редактировать</th>
        <th scope="col">Удалить</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="author" items="${authors}">
        <tr>
          <td>${author.id}</td>
          <td>${author.firstName}</td>
          <td width="20"><a href="#" role="button" class="btn btn-outline-primary">
            <img alt="Редактировать" src="../img/edit.png" width="20" height="20"></a>
          </td>
          <td width="20">
            <a href="#" role="button" class="btn btn-outline-primary">
              <img alt="Удалить" src="../img/remove.png" width="20" height="20">
            </a>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>

    <div class="col-4 border px-4">
      <form method="POST" action="">
        <h3>Новый автор</h3> <div class="mb-3">
        <br> <label for="inputAuthor" class="col-sm-3 col-form-label">Имя:</label>
        <div class="col-sm-6">
          <input type="text" name="inputAuthor" class="form-control" id="inputAuthor" />
        </div>
      </div>
        <p>
          <br> <br> <br>

          <button type="submit"
                  class="btn btn-primary">Добавить</button> <br>
        </p>
      </form>
    </div>
  </div>
</div>
  <jsp:include page="/views/footer.jsp" /> </div>

<script defer src="../js/jquery-3.7.1.js"></script> <!-- Bootstrap JS + Popper JS -->
<script defer src="../js/bootstrap.bundle.min.js"></script>
</body>
</html>
