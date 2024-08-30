package by.itclass.model.entities;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
public class Library {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NonNull
    private int id;
    @NonNull
    private String name;
    @NonNull
    private String address;
    @OneToMany(mappedBy = "library", fetch = FetchType.EAGER)
    List<Book> books;
}
