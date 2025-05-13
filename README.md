When creating a full e-commerce datbase schema,
The first table that was created was the users table.
The user table takes in the users details such as name email address and phone number
then the category id which describes what categories of products are in the database
The Products table is created to note down the details of the products, its status and references the category it belongs to
Orders takes in the information on orders placed, this includes  the users details which is being referenced from the users table the date the order was placed and its status
The Delivery_item table takes in the informatio of the products that are being deliverd this it references details from the the product table to know what products are being delivered and the order table to know who and the date
The payments table is a table showing customers and their payment approach on what products and if there is a balance to be paid
The balance table shows information of the users and their paments details and the status of the user (whether they are owing or not)