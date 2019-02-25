DROP TABLE IF EXISTS `customers`;
DROP TABLE IF EXISTS `pets`;
DROP TABLE IF EXISTS `sitters`;
DROP TABLE IF EXISTS `schedules`;
DROP TABLE IF EXISTS `paymentTypes`;
DROP TABLE IF EXISTS `reviews`;
DROP TABLE IF EXISTS `petServices`;

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
	`photo` BLOB(1000),
	`approximateWeightInPounds` INT(8),
	`primaryColor` VARCHAR(100),
	`nature` VARCHAR(100),
	`isSpayedAndNeutered` BOOLEAN,
	`id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`ownerID` int
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
	`ownerID` INT
);

CREATE TABLE `petServices` (
	`rate` DOUBLE NOT NULL,
	`nameOfSerivice` VARCHAR(250) NOT NULL,
	`descriptionOfService` VARCHAR(1000),
	`petType` VARCHAR(100) NOT NULL,
	`ownerID` INT NOT NULL,
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);



