USE alx_book_store;

SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE, COLUMN_DEFAULT, CHARACTER_MAXIMUM_LENGTH
FROM information_schema.columns
WHERE table_name = 'books' AND table_schema = 'alx_book_store';
