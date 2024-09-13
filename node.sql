-- tạo database app food
# tạo table users
CREATE TABLE users (
user_id INT PRIMARY KEY AUTO_INCREMENT,
full_name VARCHAR(50) NOT NULL,
email VARCHAR(255) NOT NULL,
pass_word VARCHAR(255) NOT NULL
)

# tạo data users
INSERT INTO users (full_name, email, pass_word) VALUES
('John Doe', 'john.doe@example.com', 'password123'),
('Jane Smith', 'jane.smith@example.com', 'mypassword'),
('Michael Johnson', 'michael.j@example.com', 'pass456'),
('Emily Davis', 'emily.d@example.com', 'secret789'),
('William Brown', 'will.brown@example.com', 'brownpass'),
('Sophia Wilson', 'sophia.w@example.com', 'sophiapass'),
('James Garcia', 'james.g@example.com', 'garciapass'),
('Olivia Martinez', 'olivia.m@example.com', 'oliv1234'),
('Benjamin Lee', 'ben.lee@example.com', 'leeben2021'),
('Lucas Taylor', 'lucas.t@example.com', 'lucastaypass'),
('Isabella Harris', 'isabella.h@example.com', 'harrissec'),
('Mason Clark', 'mason.c@example.com', 'clarkpass'),
('Ava Lewis', 'ava.lewis@example.com', 'avalewpass'),
('Ethan Walker', 'ethan.w@example.com', 'walkersecure'),
('Mia Hall', 'mia.h@example.com', 'hallpass99'),
('Alexander Young', 'alex.young@example.com', 'youngpass456'),
('Charlotte King', 'charlotte.k@example.com', 'kingsecret'),
('Daniel Wright', 'daniel.w@example.com', 'wright123'),
('Grace Scott', 'grace.s@example.com', 'scott123'),
('Matthew Green', 'matt.green@example.com', 'greenpass');

#tạo table restaurant
CREATE TABLE restaurant (
    res_id INT AUTO_INCREMENT PRIMARY KEY,
    res_name VARCHAR(255) NOT NULL,
    image TEXT,
    descriptions TEXT
)
# tạo data restaurant
INSERT INTO restaurant (res_name, image, descriptions) VALUES
('The Gourmet Kitchen', 'image1.jpg', 'A fine dining experience with exquisite dishes.'),
('Spice Symphony', 'image2.jpg', 'A blend of spices from around the world.'),
('Ocean Breeze', 'image3.jpg', 'Seafood specialties with a seaside ambiance.'),
('The Green Plate', 'image4.jpg', 'Vegan and vegetarian-friendly dishes.'),
('Grill Master', 'image5.jpg', 'Best steaks and grills in town.'),
('The Italian Bistro', 'image6.jpg', 'Authentic Italian cuisine in a cozy setting.'),
('Sushi Heaven', 'image7.jpg', 'Fresh sushi and sashimi prepared daily.'),
('BBQ Bliss', 'image8.jpg', 'A BBQ lover\'s paradise with a variety of sauces.'),
('Burger Hub', 'image9.jpg', 'Gourmet burgers with a modern twist.'),
('Taco Fiesta', 'image10.jpg', 'Mexican street food with bold flavors.'),
('Pasta Palace', 'image11.jpg', 'All kinds of pasta with homemade sauces.'),
('The Curry House', 'image12.jpg', 'A taste of traditional Indian curries.'),
('Fusion Flavors', 'image13.jpg', 'A mix of global cuisines with a modern twist.'),
('The Rustic Café', 'image14.jpg', 'A cozy café with rustic vibes and great coffee.'),
('Pizza Planet', 'image15.jpg', 'Delicious pizzas with a variety of toppings.'),
('Dessert Haven', 'image16.jpg', 'Sweet treats and desserts to satisfy your cravings.'),
('Noodle Nirvana', 'image17.jpg', 'Authentic Asian noodles and broths.'),
('Steakhouse Supreme', 'image18.jpg', 'Premium steaks cooked to perfection.'),
('Café de Paris', 'image19.jpg', 'French-inspired café with pastries and coffee.'),
('Tapas Tavern', 'image20.jpg', 'A variety of small plates with big flavors.');

# tạo table food_type
CREATE TABLE food_type (
    type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(255)
)

# tạo data food_type
INSERT INTO food_type (type_name) VALUES
('Italian'),
('Mexican'),
('Chinese'),
('Indian'),
('Japanese'),
('American'),
('French'),
('Thai'),
('Mediterranean'),
('Korean'),
('Vietnamese'),
('Spanish'),
('Greek'),
('Turkish'),
('Lebanese'),
('Brazilian'),
('German'),
('Caribbean'),
('Moroccan'),
('Ethiopian');

# tạo table food
CREATE TABLE food (
    food_id INT AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(255),
    image VARCHAR(255),
    price FLOAT,
    descriptions VARCHAR(255),
    type_id INT,
    FOREIGN KEY (type_id) REFERENCES food_type(type_id)
)

# tạo data food
INSERT INTO food (food_name, image, price, descriptions, type_id) VALUES
('Margherita Pizza', 'pizza.jpg', 9.99, 'Classic pizza with tomatoes, mozzarella, and basil.', 1),
('Tacos Al Pastor', 'tacos.jpg', 7.99, 'Traditional Mexican tacos with marinated pork.', 2),
('Kung Pao Chicken', 'kung_pao_chicken.jpg', 12.99, 'Spicy stir-fry with chicken, peanuts, and vegetables.', 3),
('Butter Chicken', 'butter_chicken.jpg', 10.99, 'Creamy chicken curry with Indian spices.', 4),
('Sushi Platter', 'sushi.jpg', 19.99, 'Assorted sushi with fresh fish and vegetables.', 5),
('Cheeseburger', 'cheeseburger.jpg', 8.99, 'Juicy beef burger with cheese and toppings.', 6),
('Croissant', 'croissant.jpg', 2.99, 'Buttery, flaky pastry from France.', 7),
('Pad Thai', 'pad_thai.jpg', 11.99, 'Thai stir-fried noodles with shrimp and peanuts.', 8),
('Falafel Wrap', 'falafel.jpg', 6.99, 'Crispy falafel with hummus and vegetables.', 9),
('Bibimbap', 'bibimbap.jpg', 14.99, 'Korean mixed rice with vegetables and meat.', 10),
('Pho', 'pho.jpg', 9.99, 'Vietnamese noodle soup with beef and herbs.', 11),
('Paella', 'paella.jpg', 16.99, 'Spanish rice dish with seafood and saffron.', 12),
('Greek Salad', 'greek_salad.jpg', 5.99, 'Fresh salad with feta cheese, olives, and cucumbers.', 13),
('Shawarma', 'shawarma.jpg', 8.99, 'Middle Eastern wrap with spiced meat and vegetables.', 14),
('Hummus Plate', 'hummus.jpg', 6.99, 'Creamy hummus with pita bread and vegetables.', 15),
('Churrasco', 'churrasco.jpg', 18.99, 'Brazilian grilled beef steak.', 16),
('Bratwurst', 'bratwurst.jpg', 7.99, 'German sausage served with mustard and bread.', 17),
('Jerk Chicken', 'jerk_chicken.jpg', 13.99, 'Spicy grilled chicken with Jamaican spices.', 18),
('Lamb Tagine', 'lamb_tagine.jpg', 17.99, 'Moroccan lamb stew with apricots and almonds.', 19),
('Injera with Stew', 'injera_stew.jpg', 10.99, 'Ethiopian flatbread served with spicy stew.', 20);

# tạo table order
CREATE TABLE orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    food_id INT,
    amount INT,
    code VARCHAR(255),
    arr_sub_id VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (food_id) REFERENCES food(food_id)
)

# tạo data orders
INSERT INTO orders (user_id, food_id, amount, code, arr_sub_id) VALUES
(1, 1, 2, 'ORD001', 'SUB1001'),
(2, 2, 1, 'ORD002', 'SUB1002'),
(3, 3, 3, 'ORD003', 'SUB1003'),
(4, 4, 2, 'ORD004', 'SUB1004'),
(5, 5, 1, 'ORD005', 'SUB1005'),
(6, 6, 1, 'ORD006', 'SUB1006'),
(7, 7, 2, 'ORD007', 'SUB1007'),
(8, 8, 3, 'ORD008', 'SUB1008'),
(9, 9, 2, 'ORD009', 'SUB1009'),
(10, 10, 1, 'ORD010', 'SUB1010'),
(1, 11, 1, 'ORD011', 'SUB1011'),
(2, 12, 2, 'ORD012', 'SUB1012'),
(3, 13, 3, 'ORD013', 'SUB1013'),
(4, 14, 2, 'ORD014', 'SUB1014'),
(5, 15, 1, 'ORD015', 'SUB1015'),
(6, 16, 1, 'ORD016', 'SUB1016'),
(7, 17, 3, 'ORD017', 'SUB1017'),
(8, 18, 2, 'ORD018', 'SUB1018'),
(9, 19, 1, 'ORD019', 'SUB1019'),
(10, 20, 3, 'ORD020', 'SUB1020');

# tạo table sub_food
CREATE TABLE sub_food (
    sub_id INT AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(255),
    sub_price FLOAT,
    food_id INT,
    FOREIGN KEY (food_id) REFERENCES food(food_id)
)

# tạo data sub_food
INSERT INTO sub_food (sub_name, sub_price, food_id) VALUES
('Extra Cheese', 1.99, 1),
('Guacamole', 2.50, 2),
('Chili Sauce', 0.99, 3),
('Garlic Naan', 1.50, 4),
('Wasabi', 0.75, 5),
('Bacon', 2.00, 6),
('Butter', 0.50, 7),
('Peanuts', 0.99, 8),
('Hummus', 1.25, 9),
('Kimchi', 1.75, 10),
('Bean Sprouts', 0.99, 11),
('Saffron', 3.50, 12),
('Olives', 1.00, 13),
('Tahini', 1.25, 14),
('Pita Bread', 1.50, 15),
('Chimichurri Sauce', 2.00, 16),
('Sauerkraut', 1.00, 17),
('Jerk Sauce', 1.75, 18),
('Almonds', 2.50, 19),
('Berbere Spice', 1.99, 20);

# tạo table like_res
CREATE TABLE like_res (
    like_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    res_id INT,
    date_like DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);

# tạo data like_res
INSERT INTO like_res (user_id, res_id, date_like) VALUES
(1, 1, '2024-09-01 10:15:30'),
(2, 2, '2024-09-02 12:45:00'),
(3, 3, '2024-09-03 14:20:15'),
(4, 4, '2024-09-04 16:05:10'),
(5, 5, '2024-09-05 18:30:20'),
(6, 6, '2024-09-06 19:55:40'),
(7, 7, '2024-09-07 20:10:25'),
(8, 8, '2024-09-08 08:50:50'),
(9, 9, '2024-09-09 09:05:05'),
(10, 10, '2024-09-10 11:30:45'),
(1, 11, '2024-09-11 12:00:00'),
(2, 12, '2024-09-12 13:45:30'),
(3, 13, '2024-09-13 15:20:55'),
(4, 14, '2024-09-14 16:50:10'),
(5, 15, '2024-09-15 18:30:35'),
(6, 16, '2024-09-16 19:45:50'),
(7, 17, '2024-09-17 20:55:40'),
(8, 18, '2024-09-18 09:10:15'),
(9, 19, '2024-09-19 11:25:20'),
(10, 20, '2024-09-20 13:40:25');

# tạo table rate_res
CREATE TABLE rate_res (
    rate_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    res_id INT,
    amount INT,
    date_rate DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);
# tạo data rate_res
INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUES
(1, 1, 5, '2024-09-01 12:30:45'),
(2, 2, 4, '2024-09-02 14:20:00'),
(3, 3, 3, '2024-09-03 15:45:10'),
(4, 4, 5, '2024-09-04 16:50:25'),
(5, 5, 4, '2024-09-05 18:15:35'),
(6, 6, 3, '2024-09-06 19:10:50'),
(7, 7, 5, '2024-09-07 20:30:40'),
(8, 8, 4, '2024-09-08 08:50:15'),
(9, 9, 3, '2024-09-09 09:05:20'),
(10, 10, 5, '2024-09-10 10:45:30'),
(1, 11, 4, '2024-09-11 11:20:40'),
(2, 12, 3, '2024-09-12 12:35:55'),
(3, 13, 5, '2024-09-13 13:50:00'),
(4, 14, 4, '2024-09-14 14:20:25'),
(5, 15, 3, '2024-09-15 15:35:45'),
(6, 16, 5, '2024-09-16 16:50:30'),
(7, 17, 4, '2024-09-17 17:05:15'),
(8, 18, 3, '2024-09-18 18:20:10'),
(9, 19, 5, '2024-09-19 19:35:25'),
(10, 20, 4, '2024-09-20 20:50:40');

#- Tìm 5 người đã like nhà hàng nhiều nhất
SELECT u.user_id, u.full_name, COUNT(l.like_id) AS total_likes
FROM users AS u
JOIN like_res AS l ON u.user_id = l.user_id
GROUP BY u.user_id
ORDER BY total_likes DESC
LIMIT 5;

# - Tìm 2 nhà hàng có lượt like nhiều nhất
SELECT r.res_id, r.res_name, COUNT(l.like_id) AS total_likes
FROM restaurant AS r
JOIN like_res AS l ON r.res_id = l.res_id
GROUP BY r.res_id
ORDER BY total_likes DESC
LIMIT 2;

# - Tìm người đã đặt hàng nhiều nhất.
SELECT u.user_id, u.full_name, COUNT(o.order_id) AS total_orders
FROM users AS u
JOIN orders AS o ON u.user_id = o.user_id
GROUP BY u.user_id
ORDER BY total_orders DESC
LIMIT 1;

# - Tìm người dùng không hoạt động trong hệ thống
(không đặt hàng, không like, không đánh giá nhà
hàng).
SELECT u.user_id, u.full_name
FROM users AS u
LEFT JOIN orders AS o ON u.user_id = o.user_id
LEFT JOIN like_res AS l ON u.user_id = l.user_id
LEFT JOIN rate_res AS rr ON u.user_id = rr.user_id
WHERE o.order_id IS NULL 
  AND l.like_id IS NULL
  AND rr.rate_id IS NULL;

