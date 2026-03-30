CREATE TABLE public.accounts (
    acc_id SERIAL PRIMARY KEY,
    acc_name VARCHAR(50),
    balance INT
);

INSERT INTO public.accounts (acc_name, balance) VALUES
('Amit', 10000),
('Riya', 5000);

BEGIN;

INSERT INTO public.accounts (acc_name, balance)
VALUES ('Karan', 7000);

ROLLBACK;

SELECT * FROM public.accounts;

BEGIN;

INSERT INTO public.accounts (acc_name, balance)
VALUES ('Karan', 7000);

COMMIT;

SELECT * FROM public.accounts;

BEGIN;

UPDATE public.accounts
SET balance = balance - 2000
WHERE acc_name = 'Amit';

UPDATE public.accounts
SET balance = balance + 2000
WHERE acc_name = 'Riya';

COMMIT;

SELECT * FROM public.accounts;