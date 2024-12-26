package domain;

// Класс данных об авторе
public class Author {
  // Идентификатор автора
  private Long id;
  // Имя автора
  private String FirstName;
  // Фамилия автора
  private String LastName;

  public Author() {
  }
  public Author(String FirstName) {
    this.FirstName = FirstName;
  }
  public Author(Long id, String FirstName, String LastName) {
    this.id = id;
    this.FirstName = FirstName;
    this.LastName = LastName;
  }
  public Long getId() { return id;
  }
  public void setId(Long id) {
    this.id = id; }
  public String getFirstName() { return FirstName;
  }
  public void setFirstName(String FirstName) { this.FirstName = FirstName;
  }
  public String getLastName() { return LastName;
  }
  public void setLastname(String LastName) { this.LastName = LastName;
  }
  @Override
  public String toString() {
    return "Author {" + "Id = " + id +
      ", FirstName = " + FirstName +
      ", LastName = " + LastName +
      "}";
  }
}
