CREATE TABLE IF NOT EXISTS roles(
                                    id SERIAL PRIMARY KEY,
                                    name VARCHAR(255)
    );

CREATE TABLE IF NOT EXISTS users (
                                     id SERIAL PRIMARY KEY,
                                     username VARCHAR(100),
    password VARCHAR(100) NOT NULL,
    enabled BOOLEAN
    );

-- On Utilise toujours des listes de roles, pour permettre l'ajout de nouveaux roles à un utilisateur
CREATE TABLE IF NOT EXISTS users_roles (
                                           users_id INT,
                                           roles_id INT,
                                           FOREIGN KEY (users_id) REFERENCES users(id),
    FOREIGN KEY (roles_id) REFERENCES roles(id),
    PRIMARY KEY (users_id, roles_id)
    );

-- Le nom des roles doit commencer par ROLE_ en spring security
INSERT INTO roles (name) VALUES
                             ('ADMIN'),
                             ('USER'),
                             ('TESTER');