CREATE TABLE public.users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE public.orders (
    order_id SERIAL PRIMARY KEY,
    user_id INT,
    order_amount INT,
    FOREIGN KEY (user_id) REFERENCES public.users(user_id)
);

INSERT INTO public.users (name, email, password) VALUES
('Amit', 'amit@gmail.com', '1234'),
('Riya', 'riya@gmail.com', 'abcd'),
('Karan', 'karan@gmail.com', 'pass123');

INSERT INTO public.orders (user_id, order_amount) VALUES
(1, 5000),
(1, 3000),
(2, 7000),
(3, 2000),
(1, 1500);

CREATE INDEX idx_users_email
ON public.users(email);

CREATE VIEW public.user_order_summary AS
SELECT u.user_id,
       u.name,
       u.email,
       COUNT(o.order_id) AS total_orders,
       COALESCE(SUM(o.order_amount),0) AS total_amount
FROM public.users u
LEFT JOIN public.orders o
ON u.user_id = o.user_id
GROUP BY u.user_id, u.name, u.email;

SELECT * FROM public.user_order_summary;


