USE library_management_system;

-- Authors
INSERT INTO authors (author_name) VALUES
('Michael Crichton'),
('Umera Ahmed'),
('Allama Iqbal'),
('Mirza Ghalib'),
('Mohsin Naqvi'),
('Parveen Shakir'),
('John Elia'),
('Saadat Hasan Manto'),
('Ashfaq Ahmed'),
('Bano Qudsia');

-- Categories
INSERT INTO categories (category_name) VALUES
('Science Fiction'),
('Novel'),
('Urdu Poetry'),
('Philosophy'),
('Romance'),
('Short Stories');

-- Books
INSERT INTO books
(title, author_id, category_id, published_year, available_copies)
VALUES
('Jurassic Park', 1, 1, 1990, 5),
('The Lost World', 1, 1, 1995, 4),
('Bang-e-Dara', 3, 3, 1924, 7),
('Peer-e-Kamil', 2, 2, 2004, 5),
('lekin', 7, 3, 2006, 6);

-- Members
INSERT INTO members
(first_name, last_name, email, phone, join_date)
VALUES
('Ahmed', 'Khan', 'ahmedkhan@gmail.com', '03001234567', '2026-01-15'),
('Abdullah', 'Zaheer', 'abdullahzaheer@gmail.com', '03111234567', '2026-02-03'),
('Hamza', 'Ali', 'hamzaali@gmail.com', '03221234567', '2026-03-10'),
('Fatima', 'Raza', 'fatimaraza@gmail.com', '03331234567', '2026-04-21'),
('Usman', 'Sheikh', 'usmansheikh@gmail.com', '03451234567', '2026-05-08');

-- Borrowings
INSERT INTO borrowings
(member_id, book_id, borrowed_date, due_date, return_date)
VALUES
(1, 3, '2026-08-20', '2026-09-03', '2026-08-30'),
(2, 1, '2026-08-25', '2026-09-08', NULL),
(3, 4, '2026-09-01', '2026-09-15', NULL),
(4, 5, '2026-09-03', '2026-09-17', '2026-09-10'),
(5, 2, '2026-09-05', '2026-09-19', NULL);