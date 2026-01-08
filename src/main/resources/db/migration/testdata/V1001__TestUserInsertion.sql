INSERT INTO users (username, password, enabled) VALUES
('admin1', '$2a$10$yJrK77Tkvibxcx2SvL5HFOqUbRbGG14SMJcL8jpCHCqafmGavFghi', true),
('student1', '$2a$10$yJrK77Tkvibxcx2SvL5HFOqUbRbGG14SMJcL8jpCHCqafmGavFghi',  true),
('teacher1', '$2a$10$yJrK77Tkvibxcx2SvL5HFOqUbRbGG14SMJcL8jpCHCqafmGavFghi', true);


INSERT INTO users_roles (users_id, roles_id) VALUES
(1, 1),
(2, 2),
(3, 3)
;

