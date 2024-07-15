SELECT * FROM books;

SELECT b.*
FROM books AS b
JOIN books_categories AS bc ON b."id" = bc."bookId"
JOIN categories AS c ON bc."categoryId" = c."id"
WHERE c."name" = 'Fantasia';

SELECT 
    b."id" AS book_id,
    b."name" AS book_name,
    b."pages" AS book_pages,
    b."createdAt" AS book_created_at,
    b."updatedAt" AS book_updated_at,
    b."authorId" AS book_author_id,
    c."id" AS category_id,
    c."name" AS category_name,
    c."createdAt" AS category_created_at,
    c."updatedAt" AS category_updated_at
FROM books AS b
JOIN books_categories AS bc ON b."id" = bc."bookId"
JOIN categories AS c ON bc."categoryId" = c."id";

SELECT 
    b."id" AS book_id,
    b."name" AS book_name,
    b."pages" AS book_pages,
    b."createdAt" AS book_created_at,
    b."updatedAt" AS book_updated_at,
    b."authorId" AS book_author_id,
    a."id" AS author_id,
    a."name" AS author_name,
    a."bio" AS author_bio
FROM books AS b
JOIN authors AS a ON b."authorId" = a."id"
WHERE b."name" = 'Harry Potter';
