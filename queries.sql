USE library_management_system;

-- 1. View all books with their authors and categories
SELECT
    books.title,
    authors.author_name,
    categories.category_name,
    books.published_year,
    books.available_copies
FROM books
JOIN authors ON books.author_id = authors.author_id
JOIN categories ON books.category_id = categories.category_id;


-- 2. View currently borrowed books
SELECT
    books.title,
    members.first_name,
    members.last_name,
    borrowings.borrowed_date,
    borrowings.due_date
FROM borrowings
JOIN books ON borrowings.book_id = books.book_id
JOIN members ON borrowings.member_id = members.member_id
WHERE borrowings.return_date IS NULL;


-- 3. Find overdue books
SELECT
    books.title,
    members.first_name,
    members.last_name,
    borrowings.due_date
FROM borrowings
JOIN books ON borrowings.book_id = books.book_id
JOIN members ON borrowings.member_id = members.member_id
WHERE borrowings.return_date IS NULL
  AND borrowings.due_date < CURDATE();


-- 4. Find the most borrowed book
SELECT
    books.title,
    COUNT(borrowings.borrowing_id) AS times_borrowed
FROM books
JOIN borrowings ON books.book_id = borrowings.book_id
GROUP BY books.book_id, books.title
ORDER BY times_borrowed DESC
LIMIT 1;


-- 5. Find books with low availability
SELECT
    title,
    available_copies
FROM books
WHERE available_copies < 5;