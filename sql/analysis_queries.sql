SELECT TOP 10 * FROM books_cleaned;

--1: Avg price by rating

SELECT rating, AVG(price_gbp)
FROM books_cleaned
GROUP BY rating

--2: Books per category
SELECT category, COUNT(*)
FROM books_cleaned
GROUP BY category

--3: Stock distribution
SELECT COUNT(*),
is_in_stock
FROM books_cleaned
GROUP BY is_in_stock

--4: Avg price per category
SELECT category, AVG(price_gbp)
FROM books_cleaned
GROUP BY category;

---5: Top expensive books
SELECT TOP 10
    title,
    category,
    rating,
    price_gbp
FROM books_cleaned
ORDER BY price_gbp DESC;

--6: Category performance
SELECT
category,
COUNT(*) AS total_books,
ROUND(AVG(price_gbp),2) AS averagePrice,
ROUND(AVG(CAST(rating AS FLOAT)), 2) AS avgRating
FROM books_cleaned
GROUP BY category
ORDER BY averagePrice DESC;
