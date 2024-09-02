package by.itclass.model.entities;

import jakarta.persistence.*;
import lombok.*;

@Entity
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NonNull
    private String title;
    @NonNull
    private int pages;
    @ManyToOne
    @NonNull
    private Library library;

    public Book(@NonNull String title, @NonNull int pages) {
        this.title = title;
        this.pages = pages;
    }
}
