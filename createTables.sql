DROP TABLE IF EXISTS `customers`;
DROP TABLE IF EXISTS `pets`;
DROP TABLE IF EXISTS `sitters`;
DROP TABLE IF EXISTS `schedules`;
DROP TABLE IF EXISTS `paymentTypes`;
DROP TABLE IF EXISTS `reviews`;
DROP TABLE IF EXISTS `petServices`;
DROP TABLE IF EXISTS `reservations`;

CREATE TABLE `customers` (
	`userId` VARCHAR(20) NOT NULL,
	`password` VARCHAR(100) NOT NULL,
	`name` VARCHAR(100) NOT NULL,
	`email` VARCHAR(100),
	`phoneNumber` VARCHAR(100),
	`birthday` VARCHAR(100)
);

CREATE TABLE `sitters` (
	`averageRating` DOUBLE NOT NULL,
	`name` VARCHAR(100) NOT NULL,
	`email` VARCHAR(100) NOT NULL,
	`phoneNumber` VARCHAR(100) NOT NULL,
	`zipCode` VARCHAR(100) NOT NULL,
	`password` VARCHAR(100) NOT NULL,
	`birthday` VARCHAR(100) NOT NULL,
	`personalDescription` VARCHAR(1000) NOT NULL,
	`id` int PRIMARY KEY
);

CREATE TABLE `schedules` (
	`startTimeMonday` DOUBLE NOT NULL,
	`endTimeMonday` DOUBLE NOT NULL,
    `startTimeTuesday` DOUBLE NOT NULL,
	`endTimeTuesday` DOUBLE NOT NULL,
    `startTimeWednesday` DOUBLE NOT NULL,
	`endTimeWednesday` DOUBLE NOT NULL,
    `startTimeThursday` DOUBLE NOT NULL,
	`endTimeThursday` DOUBLE NOT NULL,
    `startTimeFriday` DOUBLE NOT NULL,
	`endTimeFriday` DOUBLE NOT NULL,
    `startTimeSaturday` DOUBLE NOT NULL,
	`endTimeSaturday` DOUBLE NOT NULL,
    `startTimeSunday` DOUBLE NOT NULL,
	`endTimeSunday` DOUBLE NOT NULL,
	`id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	`ownerID` int NOT NULL
);

CREATE TABLE `pets` (
	`name` VARCHAR(100) NOT NULL,
	`breed` VARCHAR(100) NOT NULL,
	`species` VARCHAR(100),
	`birthday` VARCHAR(100) NOT NULL,
	`approximateWeightInPounds` INT(8),
	`primaryColor` VARCHAR(100),
	`nature` VARCHAR(100),
	`isSpayedAndNeutered` BOOLEAN,
	`id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`ownerID` VARCHAR(100) NOT NULL
);

CREATE TABLE `paymentTypes` (
	`cardType` VARCHAR(100) NOT NULL,
	`cardNumber` VARCHAR(100) NOT NULL,
	`cardCCV` VARCHAR(100) NOT NULL,
	`cardExpiryDate` VARCHAR(100) NOT NULL,
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`ownerID` INT NOT NULL
);

CREATE TABLE `reviews` (
	`review` INT(10),
	`comment` VARCHAR(250) NOT NULL,
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`ownerID` INT,
	`name` VARCHAR(250) NOT NULL
);

CREATE TABLE `petServices` (
	`rate` DOUBLE NOT NULL,
	`nameOfSerivice` VARCHAR(250) NOT NULL,
	`descriptionOfService` VARCHAR(1000),
	`petType` VARCHAR(100) NOT NULL,
	`ownerID` INT NOT NULL,
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE `reservations` (
	`sitterID` INT NOT NULL,
	`customerID` VARCHAR(250) NOT NULL,
	`date` VARCHAR(100) NOT NULL,
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

-- SETUP
insert into reviews values(5,
"Megan was very professional when dealing with my pets. She fed them, cleaned them, and read them a bedtime story. Thank you Megan!",
0,
0,
"Jason Bourne"
);

insert into reviews values(4,
"Overall I had no issues with Megan and her care of my pets. However, she did eat my peruvian puff pepper I had in the fridge. Not cool Megan.",
0,
0,
"Drake Parker"
);

insert into customers values(
	"Liam",
	"password",
	"Liam McMains",
	"Liam@McMains.net",
	"512-878-7038",
	"12/17/1998"
);

insert into pets values (
	"Jeff",
	"Bird",
	"Parakeet",
	"12/17/2018",
	2,
	"Blue/Green",
	"Loves to eat pizza and watch friends.",
	false,
	null,
	"Liam"
);

insert into pets values (
	"John Jacob Jingleheimer Schmidt",
	"Dragon",
	"Wyvern",
	"11/02/1657",
	800,
	"Eternal Darkness",
	"Likes grapes and tummy rubs.",
	false,
	null,
	"Liam"
);

insert into sitters values (
	4.5,
	"Megan Parker",
	"Megan1997@yahoo.com",
	"552-691-6933",
	"75080",
	"password",
	"11/17/1966",
	"Hello everyone! My name is Megan Parker and I would be happy to take care of any of your pets. I can handle dogs, cats, dragons, parrots, poison dart frogs, and snails. Book me now!",
	0
);

insert into sitters values (
	0,
	"Michael Brown",
	"MikeyMike@msn.com",
	"512-878-2964",
	"78666",
	"password",
	"06/11/1996",
	"I will take the best care of your pets. Better than anyone has ever seen. These pets will be so loved and cared for!",
	1
);