package by.itclass.model.entities;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Library {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String address;
    @OneToMany(mappedBy = "library", fetch = FetchType.EAGER)
    List<Book> books;

    public Library(String name, String address) {
        this.name = name;
        this.address = address;
    }
}
