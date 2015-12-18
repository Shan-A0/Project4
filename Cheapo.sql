-- phpMyAdmin SQL Dump 
-- version 3.5.1 
-- http://www.phpmyadmin.net 
-- 
-- Host: localhost 
-- Generation Time: Dec 09, 2014 at 03:45 PM 
-- Server version: 5.5.24-log 
-- PHP Version: 5.4.3 

 SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO"; 
 SET time_zone = "+00:00"; 

 /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */; 
 /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */; 
 /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */; 
 /*!40101 SET NAMES utf8 */; 
-- 
-- Database: `cheapomail` 
-- 
-- -------------------------------------------------------- 
-- 
-- `user` table outline 
-- 

CREATE TABLE IF NOT EXISTS `user` ( 
   `id` int(11) NOT NULL AUTO_INCREMENT, 
   `first_name` char(255) NOT NULL, 
   `last_name` char(255) NOT NULL, 
   `password` char(25) NOT NULL, 
   `username` char(255) NOT NULL, 
   PRIMARY KEY (`id`) 
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ; 

-- -------------------------------------------------------- 
-- 
-- `message` table outline 
-- 

CREATE TABLE IF NOT EXISTS `message` ( 
   `id` int(11) NOT NULL AUTO_INCREMENT, 
   `body` char(255) NOT NULL, 
   `subject` char(255) NOT NULL, 
   `user_id` int(11) NOT NULL, 
   `recipient_ids` int(11) NOT NULL, 
   PRIMARY KEY (`id`) 
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ; 
-- -------------------------------------------------------- 
-- 
-- `message_read` table outline 
-- 

 CREATE TABLE IF NOT EXISTS `message_read` ( 
   `id` int(11) NOT NULL AUTO_INCREMENT, 
   `message_id` int(11) NOT NULL, 
   `reader_id` int(11) NOT NULL, 
   `date` date NOT NULL, 
   PRIMARY KEY (`id`) 
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ; 
 
 -- -------------------------------------------------------- 

 /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */; 
 /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */; 
 /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */; 
