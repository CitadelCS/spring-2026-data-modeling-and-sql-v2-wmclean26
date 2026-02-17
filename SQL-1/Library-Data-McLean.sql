INSERT INTO library.publisher (name, address, phone) VALUES
('Dom Smith', '123 Main st', '999-999-9999'),
('Jane Doe', '456 Oak Ave', '888-888-8888'),
('Bob Johnson', '789 Pine Rd', '777-777-7777');


INSERT INTO library.library_branch (branch_name, address) VALUES
('Central Library', '100 Forest St'),
('East Library', '200 River Rd'),
('West Library', '300 Lake Ave');


INSERT INTO library.borrower (name, address, phone) VALUES
('William Brown', '321 Elm St', '666-666-6666'),
('Emily Davis', '654 Maple Ave', '555-555-5555'),
('Michael Wilson', '987 Cedar Rd', '444-444-4444');


INSERT INTO library.book (title, publisher_name) VALUES
('The Color Purple', 'Dom Smith'),
('Along Came a Spider', 'Jane Doe'),
('Astrophysics for People in a Hurry', 'Bob Johnson');


INSERT INTO library.book_authors (book_id, author_name) VALUES
(1,'Alice Walker'),
(2,'James Patterson'),
(3,'Neil deGrasse Tyson');


INSERT INTO library.book_copies (book_id, branch_id, no_of_copies) VALUES
(1, 1, 3),
(1, 2, 2),
(1, 3, 1),
(2, 1, 4),
(2, 2, 3),
(2, 3, 2),
(3, 1, 5),
(3, 2, 4),
(3, 3, 3);


INSERT INTO library.book_loans (book_id, branch_id, card_no, date_out, due_date) VALUES
(1, 1, 1, '2024-06-01', '2024-06-15'),
(2, 2, 2, '2024-06-05', '2024-06-20'),
(3, 3, 3, '2024-06-10', '2024-06-25');