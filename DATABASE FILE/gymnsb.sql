-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 06:18 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE admin (
  user_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  name varchar(50) NOT NULL,
  PRIMARY KEY (user_id)
);

INSERT INTO admin (user_id, username, password, name) VALUES
(2, 'pablos', 'cac29d7a34687eb14b37068ee4708e7b', 'pablos');

CREATE TABLE announcements (
  id int(11) NOT NULL AUTO_INCREMENT,
  message varchar(100) NOT NULL,
  date date NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO announcements (id, message, date) VALUES
(7, 'This is to announce that our GYM will remain close for 5 days due to dasara.', '2024-03-30'),
(8, 'Opening of GYM Halls and Clubs are not fixed yet. Stay tuned for more updates!!', '2024-04-03'),
(9, 'Renovation Going On...', '2024-04-04'),
(10, 'There will be no gym class on sundays', '2024-04-04');

CREATE TABLE attendance (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id varchar(100) NOT NULL ,
  curr_date text NOT NULL,
  curr_time text NOT NULL,
  present tinyint(4) NOT NULL ,
  PRIMARY KEY (id)
);

CREATE TABLE equipment (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(30) NOT NULL,
  amount int(100) NOT NULL,
  quantity int(100) NOT NULL,
  vendor varchar(50) NOT NULL,
  description varchar(50) NOT NULL,
  address varchar(20) NOT NULL,
  contact varchar(10) NOT NULL,
  date date NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO equipment (id, name, amount, quantity, vendor, description, address, contact, date) VALUES
(3, 'Treadmill', 909, 4, 'DnS', 'Designed for walking, running', 'Mangalore', '8521479633', '2024-03-07'),
(4, 'Vertical Press Machine', 949, 3, 'SS Industries', 'For Biceps And Triceps, Upper Back, Chest', 'Arya Nagar Road,Delhi', '1245558980', '2022-03-19'),
(5, 'Dumbell - Adjustable', 102, 26, 'Uptown Suppliers', 'Material: Steel, Rubber Plastic, Concrete', 'Kochi', '9875552100', '2022-03-29'),
(6, 'Multi Bench Press Machine', 219, 2, 'DnS Suppliers', '6 In 1 Multi Bench With Incline, Flat, Decline Ben', '7 Kochi', '7410001010', '2020-04-05'),
(7, 'Exercise bike', 265, 5, 'gy suppliers', 'Indoor cycling', 'Kochi', '8524445452', '2020-04-03'),
(10, 'RowWarrior Fitness Rowing Mach', 5616, 12, 'Roww Stores', 'HIGHEST QUALITY: This best of class air rowing mac', 'Kochi', '7412585555', '2021-06-12');

CREATE TABLE members (
  user_id int(11) NOT NULL AUTO_INCREMENT,
  fullname varchar(20) NOT NULL,
  username varchar(20) NOT NULL,
  password varchar(100) NOT NULL,
  gender varchar(20) NOT NULL,
  dor date NOT NULL,
  services varchar(50) NOT NULL,
  amount int(100) NOT NULL,
  paid_date date NOT NULL,
  p_year int(11) NOT NULL,
  plan varchar(100) NOT NULL,
  address varchar(20) NOT NULL,
  contact varchar(10) NOT NULL,
  status varchar(20) NOT NULL DEFAULT 'Active',
  attendance_count int(100) NOT NULL,
  ini_weight int(100) NOT NULL DEFAULT 0,
  curr_weight int(100) NOT NULL DEFAULT 0,
  ini_bodytype varchar(50) NOT NULL,
  curr_bodytype varchar(50) NOT NULL,
  progress_date date NOT NULL,
  reminder int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (user_id)
);

INSERT INTO members (user_id, fullname, username, password, gender, dor, services, amount, paid_date, p_year, plan, address, contact, status, attendance_count, ini_weight, curr_weight, ini_bodytype, curr_bodytype, progress_date, reminder) VALUES
(6, 'Midlaj', 'midlaj', 'b6c45863875e34487ca3c155ed145efe12a74581e27befec5aa661b8ee8ca6dd', 'Male', '2023-12-25', 'Fitness', 165, '2022-06-02', 2021, '3', 'Sullia', '8545878545', 'Active', 4, 54, 62, 'Slim', 'Buffed', '2023-01-13', 0);

CREATE TABLE rates (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  charge varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO rates (id, name, charge) VALUES
(1, 'Fitness', '600'),
(2, 'Sauna', '700'),
(3, 'Cardio', '1000');

CREATE TABLE reminder (
  id int(50) NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  message text NOT NULL,
  status text NOT NULL,
  date datetime NOT NULL,
  user_id int(11) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO reminder (id, name, message, status, date, user_id) VALUES
(12, 'staff', 'tomorrow gym will open at 5:00 PM', 'unread', '2020-04-16 22:39:59', 0);

CREATE TABLE staffs (
  user_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  fullname varchar(50) NOT NULL,
  address varchar(20) NOT NULL,
  designation varchar(20) NOT NULL,
  gender varchar(10) NOT NULL,
  contact int(10) NOT NULL,
  PRIMARY KEY (user_id)
);

INSERT INTO staffs (user_id, username, password, email, fullname, address, designation, gender, contact) VALUES
(1, 'prajwal', 'cac29d7a34687eb14b37068ee4708e7b', 'prajwal@mail.com', 'Drago', '26 Morris Street', 'Manager', 'Male', 9645566258);

CREATE TABLE todo (
  id int(11) NOT NULL AUTO_INCREMENT,
  task_status varchar(50) NOT NULL,
  task_desc varchar(30) NOT NULL,
  user_id int(7) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO todo (id, task_status, task_desc, user_id) VALUES
(20, 'In Progress', 'Test Completed', 14),
(21, 'Pending', 'Mastering Crunches', 6),
(22, 'In Progress', 'Standing Workouts For Flat Abs', 6),
(23, 'In Progress', 'Triceps Buildup - 3 set', 14),
(24, 'Pending', 'Decline dumbbell bench press', 6),
(27, 'Pending', 'dddd', 0),
(28, 'In Progress', 'Test 1', 23);