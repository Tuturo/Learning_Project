package domain;

public class Book {
  // Идентификатор сотрудника
  private Long id; // id
  private Long AuthorId; // внешний ключ, id автора
  private Author author; // ссылка на имя автора
  private Long PublisherId; // внешний ключ, id издательства
  private Publisher publisher; // название издательства
  private String Title; // Название книги
  private Long Code; // Код книги
  private Long YearPublish; // Год издания
  private Long CountPage; // Количество страниц
  private String Hardcover; // Тип переплета
  private String Abstract; // Реферат
  private String Status; // Наличие на складе

//  public Book(String Title, Long YearPublish, Long CountPage, Long PublisherId, Publisher publisher) {
//    this.Title = Title;
//    this.YearPublish = YearPublish;
//    this.CountPage = CountPage;
//    this.PublisherId = PublisherId;
//    this.publisher = publisher;
//  }

//  public Book(Long id, Publisher publisher, String Title, Long YearPublish, Long CountPage) {
//    this.id = id;
//    this.Title = Title;
//    this.YearPublish = YearPublish;
//    this.CountPage = CountPage;
//    this.publisher = publisher;
//  }

  public Book(long id, String Title) {
    this.id = id;
    this.Title = Title;
  }
  public Book(Long id, Long AuthorId, Author author, Long PublisherId, Publisher publisher, String Title, Long Code, Long YearPublish, Long CountPage, String Hardcover, String Abstract, String Status) {
    this.id = id;
    this.AuthorId = AuthorId;
    this.author = author;
    this.PublisherId = PublisherId;
    this.Title = Title;
    this.YearPublish = YearPublish;
    this.CountPage = CountPage;
    this.publisher = publisher;
    this.Code = Code;
    this.Hardcover = Hardcover;
    this.Status = Status;
    this.Abstract = Abstract;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Long getAuthorId() {
    return AuthorId;
  }

  public void setAuthorId(Long AuthorId) {
    this.AuthorId = AuthorId;
  }

  public Author getAuthor() {
    return author;
  }

  public void setAuthor(Author author) {
    this.author = author;
  }

  ;

  public Long getPublisherId() {
    return PublisherId;
  }

  public void setPublisherId(Long PublisherId) {
    this.PublisherId = PublisherId;
  }

  public Publisher getPublisher() {
    return publisher;
  }

  public void setPublisher(Publisher publisher) {
    this.publisher = publisher;
  }

  ;

  public String getTitle() {
    return Title;
  }

  public void setTitle(String Title) {
    this.Title = Title;
  }

  public Long getCode() {
    return Code;
  }

  public void setCode(Long Code) {
    this.Code = Code;
  }

  public Long getYearPublish() {
    return YearPublish;
  }

  public void setYearPublish(Long YearPublish) {
    this.YearPublish = YearPublish;
  }

  public Long getCountPage() {
    return CountPage;
  }

  public void setCountPage(Long CountPage) {
    this.CountPage = CountPage;
  }

  public String getHardcover() {
    return Hardcover;
  }

  public void setHardcover(String Hardcover) {
    this.Hardcover = Hardcover;
  }

  public String getAbstract() {
    return Abstract;
  }

  public void setAbstract(String Abstract) {
    this.Abstract = Abstract;
  }

  public String getStatus() {
    return Status;
  }

  public void setStatus(String Status) {
    this.Status = Status;
  }

  @Override
  public String toString() {
    return "Book {" + "Id = " + id +
      ", AuthorId = " + getAuthorId() +
      ", author = " + getAuthor() +
      ", PublisherId = " + getPublisherId() +
      ", publisher = " + getPublisher() +
      ", Title = " + Title +
      ", Code = " + Code +
      ", YearPublish = " + YearPublish +
      ", CountPage = " + CountPage +
      ", Hardcover = " + Hardcover +
      ", Abstract = " + Abstract +
      ", Status = " + Status +
      "}";
  }
}
