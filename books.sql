-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 11, 2024 at 02:46 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `ID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Genre` varchar(100) NOT NULL,
  `PublicationDate` date NOT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ID`, `Title`, `Author`, `Genre`, `PublicationDate`, `Price`) VALUES
(50, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', '1925-04-10', '10.99'),
(51, '1984', 'George Orwell', 'Dystopian', '1949-06-08', '9.99'),
(52, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', '1960-07-11', '7.99'),
(53, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', '1951-07-16', '8.99'),
(54, 'Pride and Prejudice', 'Jane Austen', 'Romance', '1813-01-28', '6.99'),
(55, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', '1937-09-21', '12.99'),
(56, 'Fahrenheit 451', 'Ray Bradbury', 'Dystopian', '1953-10-19', '11.99'),
(57, 'Moby-Dick', 'Herman Melville', 'Adventure', '1851-11-14', '14.99'),
(58, 'War and Peace', 'Leo Tolstoy', 'Historical', '1869-01-01', '13.99'),
(59, 'The Adventures of Huckleberry Finn', 'Mark Twain', 'Adventure', '1884-12-10', '8.49'),
(60, 'The Odyssey', 'Homer', 'Epic', '1800-01-01', '15.99'),
(61, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Psychological', '1866-01-01', '11.49'),
(62, 'The Iliad', 'Homer', 'Epic', '1750-01-01', '14.99'),
(63, 'Jane Eyre', 'Charlotte Brontë', 'Romance', '1847-10-16', '9.49'),
(64, 'Brave New World', 'Aldous Huxley', 'Dystopian', '1932-08-18', '12.49'),
(65, 'Wuthering Heights', 'Emily Brontë', 'Gothic', '1847-12-01', '10.49'),
(66, 'Anna Karenina', 'Leo Tolstoy', 'Fiction', '1878-01-01', '13.49'),
(67, 'The Divine Comedy', 'Dante Alighieri', 'Epic', '1320-01-01', '16.99'),
(68, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'Philosophical', '1880-01-01', '14.49'),
(69, 'Les Misérables', 'Victor Hugo', 'Historical', '1862-01-01', '13.99'),
(70, 'A Tale of Two Cities', 'Charles Dickens', 'Historical', '1859-04-30', '10.99'),
(71, 'Don Quixote', 'Miguel de Cervantes', 'Adventure', '1605-01-16', '18.99'),
(72, 'The Count of Monte Cristo', 'Alexandre Dumas', 'Adventure', '1844-01-01', '14.99'),
(73, 'Ulysses', 'James Joyce', 'Modernist', '1922-02-02', '13.99'),
(74, 'Great Expectations', 'Charles Dickens', 'Fiction', '1861-01-01', '9.99'),
(75, 'The Scarlet Letter', 'Nathaniel Hawthorne', 'Romance', '1850-03-16', '11.99'),
(76, 'The Grapes of Wrath', 'John Steinbeck', 'Fiction', '1939-04-14', '12.99'),
(77, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Gothic', '1890-07-20', '10.49'),
(78, 'Dracula', 'Bram Stoker', 'Gothic', '1897-05-26', '13.49'),
(79, 'Frankenstein', 'Mary Shelley', 'Gothic', '1818-01-01', '9.99'),
(80, 'The Metamorphosis', 'Franz Kafka', 'Fiction', '1915-01-01', '8.99'),
(81, 'Gulliver\'s Travels', 'Jonathan Swift', 'Satire', '1726-10-28', '14.99'),
(82, 'The Trial', 'Franz Kafka', 'Fiction', '1925-04-01', '11.49'),
(83, 'The Stranger', 'Albert Camus', 'Philosophical', '1942-01-01', '10.99'),
(84, 'Heart of Darkness', 'Joseph Conrad', 'Novella', '1899-01-01', '9.49'),
(85, 'The Sun Also Rises', 'Ernest Hemingway', 'Fiction', '1926-10-22', '12.99'),
(86, 'A Farewell to Arms', 'Ernest Hemingway', 'Fiction', '1929-09-27', '11.99'),
(87, 'The Old Man and the Sea', 'Ernest Hemingway', 'Fiction', '1952-09-01', '9.99'),
(88, 'Of Mice and Men', 'John Steinbeck', 'Fiction', '1937-02-06', '7.99'),
(89, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', '1951-07-16', '8.99'),
(90, 'The Sound and the Fury', 'William Faulkner', 'Fiction', '1929-10-07', '10.49'),
(91, 'Beloved', 'Toni Morrison', 'Fiction', '1987-09-16', '14.99'),
(92, 'One Hundred Years of Solitude', 'Gabriel García Márquez', 'Magical Realism', '1967-05-30', '15.99'),
(93, 'The Name of the Rose', 'Umberto Eco', 'Historical', '1980-11-01', '12.99'),
(94, 'Lolita', 'Vladimir Nabokov', 'Fiction', '1955-09-15', '14.49'),
(95, 'The Master and Margarita', 'Mikhail Bulgakov', 'Fiction', '1967-01-01', '13.49'),
(96, 'A Clockwork Orange', 'Anthony Burgess', 'Dystopian', '1962-01-01', '11.99'),
(97, 'Invisible Man', 'Ralph Ellison', 'Fiction', '1952-04-14', '13.99'),
(98, 'Catch-22', 'Joseph Heller', 'Satire', '1961-11-10', '12.49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
