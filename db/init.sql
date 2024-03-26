-- database: ../test.sqlite
--
CREATE TABLE IF NOT EXISTS restaurants (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    rating INTEGER NOT NULL,
    style TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS tags (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

-- Initialize the restaurant_tags table to establish a many-to-many relationship
CREATE TABLE IF NOT EXISTS restaurant_tags (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    restaurant_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id)
);

-- Insert seed data into the restaurants table
INSERT INTO "restaurants" ("id", "name", "rating", "style") VALUES (1, 'Asian Chili', 5, '');
INSERT INTO "restaurants" ("id", "name", "rating", "style") VALUES (2, 'The Tasty', 4, '');
INSERT INTO "restaurants" ("id", "name", "rating", "style") VALUES (3, 'Shi Miao Dao', 3, '');
INSERT INTO "restaurants" ("id", "name", "rating", "style") VALUES (4, 'Pho House', 5, '');
INSERT INTO "restaurants" ("id", "name", "rating", "style") VALUES (5, 'McDonald''s', 4, '');
INSERT INTO "restaurants" ("id", "name", "rating", "style") VALUES (6, 'Collegetown Bagel', 3, '');
INSERT INTO "restaurants" ("id", "name", "rating", "style") VALUES (7, 'Thompson & Bleeker''s', 3, '');
INSERT INTO "restaurants" ("id", "name", "rating", "style") VALUES (8, 'Kimchi', 5, '');
INSERT INTO "restaurants" ("id", "name", "rating", "style") VALUES (9, 'Koko', 4, '');
INSERT INTO "restaurants" ("id", "name", "rating", "style") VALUES (10, 'Levi''s kitchen', 3, '');

-- Add more as needed...

-- Insert seed data into the tags table
INSERT INTO "tags" ("id", "name") VALUES (1, 'delivery');
INSERT INTO "tags" ("id", "name") VALUES (2, 'noodles');
INSERT INTO "tags" ("id", "name") VALUES (3, 'fast-food');
INSERT INTO "tags" ("id", "name") VALUES (4, 'breakfast');
INSERT INTO "tags" ("id", "name") VALUES (5, 'Italian');
INSERT INTO "tags" ("id", "name") VALUES (6, 'American');
INSERT INTO "tags" ("id", "name") VALUES (7, 'Asian');
-- Add more as needed...

-- Link restaurants and tags in the restaurant_tags table
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (1, 1, 1);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (2, 2, 1);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (3, 3, 1);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (4, 3, 2);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (5, 4, 2);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (6, 5, 1);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (7, 5, 3);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (8, 6, 4);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (9, 7, 5);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (10, 8, 1);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (11, 9, 1);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (12, 10, 4);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (13, 1, 7);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (14, 2, 7);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (15, 3, 7);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (16, 4, 7);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (17, 5, 6);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (18, 8, 7);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (19, 9, 7);
INSERT INTO "restaurant_tags" ("id", "restaurant_id", "tag_id") VALUES (20, 10, 6);
