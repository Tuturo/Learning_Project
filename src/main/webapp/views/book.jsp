<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="domain.Book"%>
<%@ page import="domain.Author"%>
<%@ page import="domain.Publisher"%>
<%
  Book b1 = new Book(1L, "Основы Python");
  Book b2 = new Book(2L, "Основы JAVA");
  Book b3= new Book(3L, "Основы JavaScript");
  Book b4 = new Book(4L, "Основы C++");
  Book[] books = new Book[]{b1, b2, b3, b4};
  pageContext.setAttribute("books", books);

  Author a1 = new Author(1L, "Иван");
  Author a2 = new Author(2L, "Петр");
  Author a3= new Author(3L, "Сидор");
  Author a4 = new Author(4L, "Иван");
  Author[] authors = new Author[]{a1, a2, a3, a4};
  pageContext.setAttribute("authors", authors);

  Publisher p1 = new Publisher(1L, "ЭКСМО");
  Publisher p2 = new Publisher(2L, "Феникс");
  Publisher p3= new Publisher(3L, "Росмэн");
  Publisher p4 = new Publisher(4L, "АСТ");
  Publisher[] publishers = new Publisher[]{p1, p2, p3, p4};
  pageContext.setAttribute("publishers", publishers);
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"> <title>Books</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Книги</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="../css/bootstrap.min.css"> <!-- jQuery -->
  <script defer src="../js/jquery-3.7.1.js"></script> <!-- Bootstrap JS + Popper JS -->
  <script defer src="../js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <jsp:include page="/views/header.jsp" />
  <div class="container-fluid">
    <div class="row justify-content-start ">
      <div class="col-8 border bg-light px-4">
      <h3>Список сотрудников</h3> <table class="table">
        <thead>
          <tr>
            <th scope="col">Код</th>
            <th scope="col">Книга</th>
            <th scope="col">Автор</th>
            <th scope="col">Издатель</th>
            <th scope="col">Редактировать</th>
            <th scope="col">Удалить</th>
          </tr>
        </thead>
      <tbody>

<c:forEach var="book" items="${books}">
      <c:forEach var="publisher" items="${publishers}">
        <c:forEach var="author" items="${authors}">
          <tr>
            <td>${book.id}</td>
            <td>${book.title}</td>
            <td>${author.firstName}</td>
            <td>${publisher.namePublisher}</td>
            <td width="20">
              <a href="#" role="button" class="btn btn-outline-primary">
                <img alt="Редактировать" src="../img/edit.png" width="20" height="20">
              </a>
            </td>
            <td width="20">
              <a href="#" role="button" class="btn btn-outline-primary">
                <img alt="Удалить" src="../img/remove.png" width="20" height="20">
              </a>
            </td>
          </tr>
        </c:forEach>
      </c:forEach>
    </c:forEach>
      </tbody>
    </table>
  </div>
  <div class="col-4 border px-4"> <form method="POST" action="">
    <h3>Новая книга</h3> <br>
    <div class="mb-3 row">
      <label for="lastname"
             class="col-sm-3 col-form-label">Фамилия</label>
      <div class="col-sm-7">
        <input type="text" class="form-control"
               id="lastname" name="lastname" /> </div>
    </div>
    <div class="mb-3 row">
      <label for="staticFirstname"
      class="col-sm-3 col-form-label">Имя
      </label>
      <div class="col-sm-7">
      <input type="text"
             class="form-control" id="staticFirstname" name="firstname" />
    </div>
    </div>
    <div class="mb-3 row"> <label for="nameBook"
      class="col-sm-3 col-form-label">Должность</label> <div class="col-sm-7">
        <select name="book" id="nameBook" class="form-control">
        <option>Выберите должность</option>
        <c:forEach var="book" items="${books}">
          <option value="${book}">
            <c:out value="${book.title}">
            </c:out>
          </option>
          </c:forEach>
        </select>
      </div>
    </div>

    <div class="mb-3 row"> <label for="phone"
                                  class="col-sm-3 col-form-label">Телефон</label> <div class="col-sm-7">
      <input type="text"
             class="form-control" id="phone" name="phone" />
    </div>
    </div>
    <div class="mb-3 row"> <label for="email"
                                  class="col-sm-3 col-form-label">Эл.почта</label> <div class="col-sm-7">
      <input type="text" class="form-control" id="email" name="email" />
    </div>
    </div>
    <p> <br>
      <button type="submit"
              class="btn btn-primary">Добавить</button> </p>
  </form>
  </div>
</div>
</div>
<jsp:include page="/views/footer.jsp" />
</body>
</html>
