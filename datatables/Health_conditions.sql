
BEGIN;

INSERT INTO health_conditions (id, name, description) VALUES
(1, 'Diabetes', 'Requires low sugar and carb-conscious meals'),
(2, 'Hypertension', 'Requires low sodium meals'),
(3, 'Gluten Intolerance', 'Avoids gluten'),
(4, 'Lactose Intolerance', 'Avoids dairy products');

COMMIT;