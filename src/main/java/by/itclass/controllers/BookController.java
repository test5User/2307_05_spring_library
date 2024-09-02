package by.itclass.controllers;

import by.itclass.model.entities.Book;
import by.itclass.model.entities.BookInLibrary;
import by.itclass.model.repositories.BookRepository;
import by.itclass.model.repositories.LibraryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {
    private BookRepository bookRepository;
    private LibraryRepository libraryRepository;

    @Autowired
    public void setBookRepository(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @Autowired
    public void setLibraryRepository(LibraryRepository libraryRepository) {
        this.libraryRepository = libraryRepository;
    }

    @GetMapping("/addBook/{id}")
    public ModelAndView addBook(@PathVariable(name = "id") int id) {
        return new ModelAndView("add-book", "book", new BookInLibrary(id));
    }

    @PostMapping("/saveBook")
    public String saveBook(@ModelAttribute(name = "book") BookInLibrary bookInLibrary) {
        var book = new Book(bookInLibrary.getTitle(), bookInLibrary.getPages());
        book.setLibrary(libraryRepository.findById(bookInLibrary.getLibrary_id()).get());
        bookRepository.save(book);
        return "redirect:/view/" + bookInLibrary.getLibrary_id();
    }

    @PostMapping("/addBookOld")
    public String addBookOld(
            @RequestParam(name = "title") String title,
            @RequestParam(name = "pages") int pages,
            @RequestParam(name = "library_id") int library_id) {
        var library = libraryRepository.findById(library_id).get();
        bookRepository.save(new Book(title, pages, library));
        return "redirect:/view/" + library_id;
    }

    @GetMapping("/delBook/{libraryId}/{bookId}")
    public String delBook(
            @PathVariable(name = "libraryId") int libraryId,
            @PathVariable(name = "bookId") int bookId) {
        bookRepository.deleteById(bookId);
        return "redirect:/view/" + libraryId;
    }
}
