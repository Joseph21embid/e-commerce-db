CREATE TABLE `Users` (
  `id` int PRIMARY KEY,
  `name` varchar(255),
  `email` varchar(255),
  `phone_number` varchar(255),
  `password` varchar(255),
  `address` var_char
);

CREATE TABLE `Categoris` (
  `id` int PRIMARY KEY,
  `name` text
);

CREATE TABLE `Products` (
  `id` int PRIMARY KEY,
  `category_id` int,
  `Quantity` int,
  `Price` decimal,
  `Status` varchar(255),
  `Restock_date` datetime,
  `Restock_quantity` int
);

CREATE TABLE `Orders` (
  `id` int PRIMARY KEY,
  `User_id` int,
  `Date` datetime,
  `Status` varchar(255)
);
  
CREATE TABLE `Delivery_item` (
  `id` int PRIMARY KEY,
  `Product_id` int,
  `Order_id` int,
  `Quantity` int
);

CREATE TABLE `Payments` (
  `id` int PRIMARY KEY,
  `Order_id` int,
  `Product_id` int,
  `Payment_method` varchar(255),
  `Outstanding_balance` decimal
);

CREATE TABLE `Balance` (
  `id` int PRIMARY KEY,
  `User_id` int,
  `Payments_id` int,
  `Status` varchar(255)
);

CREATE TABLE `Shipping` (
  `id` int PRIMARY KEY,
  `Order_id` int,
  `Delivery_id` int,
  `Payments_id` int,
  `Shipping_address` varchar(255),
  `Status` varchar(255)
);

ALTER TABLE `Products` ADD FOREIGN KEY (`category_id`) REFERENCES `Categoris` (`id`);

ALTER TABLE `Orders` ADD FOREIGN KEY (`User_id`) REFERENCES `Users` (`id`);

ALTER TABLE `Delivery_item` ADD FOREIGN KEY (`Product_id`) REFERENCES `Products` (`id`);

ALTER TABLE `Delivery_item` ADD FOREIGN KEY (`Order_id`) REFERENCES `Orders` (`id`);

ALTER TABLE `Payments` ADD FOREIGN KEY (`Order_id`) REFERENCES `Orders` (`id`);

ALTER TABLE `Payments` ADD FOREIGN KEY (`Product_id`) REFERENCES `Products` (`id`);

ALTER TABLE `Balance` ADD FOREIGN KEY (`User_id`) REFERENCES `Users` (`id`);

ALTER TABLE `Balance` ADD FOREIGN KEY (`Payments_id`) REFERENCES `Payments` (`id`);

ALTER TABLE `Shipping` ADD FOREIGN KEY (`Order_id`) REFERENCES `Orders` (`id`);

ALTER TABLE `Shipping` ADD FOREIGN KEY (`Delivery_id`) REFERENCES `Delivery_item` (`id`);

ALTER TABLE `Shipping` ADD FOREIGN KEY (`Payments_id`) REFERENCES `Payments` (`id`);
