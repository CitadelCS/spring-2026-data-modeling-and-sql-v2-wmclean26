CREATE SCHEMA IF NOT EXISTS library;

CREATE TABLE IF NOT EXISTS library.publisher(
    name VARCHAR(255) PRIMARY KEY,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS library.library_branch(
    branch_id serial PRIMARY KEY,
    branch_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS library.borrower(
    card_no serial PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS library.book(
    book_id serial PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publisher_name VARCHAR(255) NOT NULL,
    FOREIGN KEY (publisher_name)
        REFERENCES library.publisher (name)
        ON UPDATE RESTRICT ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS library.book_authors(
    book_id INT,
    author_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (book_id, author_name),
    FOREIGN KEY (book_id)
        REFERENCES library.book (book_id)
        ON UPDATE RESTRICT ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS library.book_copies(
    book_id INT,
    branch_id INT,
    no_of_copies INT NOT NULL,
    FOREIGN KEY (book_id)
        REFERENCES library.book (book_id)
        ON UPDATE RESTRICT ON DELETE CASCADE,
    FOREIGN KEY (branch_id)
        REFERENCES library.library_branch (branch_id)
        ON UPDATE RESTRICT ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS library.book_loans(
    book_id INT,
    branch_id INT,
    card_no INT,
    date_out DATE NOT NULL,
    due_date DATE NOT NULL,
    PRIMARY KEY (book_id, branch_id, card_no),
    FOREIGN KEY (book_id)
        REFERENCES library.book (book_id)
        ON UPDATE RESTRICT ON DELETE CASCADE,
    FOREIGN KEY (branch_id)
        REFERENCES library.library_branch (branch_id)
        ON UPDATE RESTRICT ON DELETE CASCADE,
    FOREIGN KEY (card_no)
        REFERENCES library.borrower (card_no)
        ON UPDATE RESTRICT ON DELETE CASCADE
);

