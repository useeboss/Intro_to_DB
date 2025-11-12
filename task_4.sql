-- task_4.sql
-- Script to print the full description of the table BOOKS
-- Database name will be passed as an argument of the mysql command

USE alx_book_store;

SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    COLUMN_TYPE,
    IS_NULLABLE,
    COLUMN_KEY,
    EXTRA
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'
  AND TABLE_NAME = 'books';
