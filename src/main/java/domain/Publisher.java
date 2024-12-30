package domain;

// Класс данных о публикациях
public class Publisher {
  // Идентификатор издательства
  private Long id;
  // Название издательства
  private String NamePublisher;
  // Фамилия автора
  private String Address;
  private String Site;

  public Publisher() {
  }
  public Publisher(String NamePublisher) {
    this.NamePublisher = NamePublisher;
  }
  public Publisher(Long id, String NamePublisher) {
    this.id = id;
    this.NamePublisher = NamePublisher;
  }
  public Publisher(Long id, String NamePublisher, String Address, String Site) {
    this.id = id;
    this.NamePublisher = NamePublisher;
    this.Address = Address;
    this.Site = Site;
  }
  public Long getId() { return id;
  }
  public void setId(Long id) {
    this.id = id; }
  public String getNamePublisher() { return NamePublisher;
  }
  public void setNamePublish(String NamePublisher) { this.NamePublisher = NamePublisher;
  }
  public String getAddress() { return Address;
  }
  public void setAddress(String Address) { this.Address = Address;
  }
  public String getSite() { return Site;
  }
  public void setSite(String Site) { this.Site = Site;
  }
  @Override
  public String toString() {
    return "Publisher {" + "Id = " + id +
      ", NamePublisher = " + NamePublisher +
      ", Address = " + Address +
      ", Site = " + Site +
      "}";
  }
}
