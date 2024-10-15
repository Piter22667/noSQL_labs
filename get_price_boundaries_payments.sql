create function get_price_boundaries_payments(OUT max_price integer, OUT min_price integer) returns record
    language sql
as
$$
SELECT MAX(amount), MIN(amount)
FROM payments
$$;

alter function get_price_boundaries_payments(out integer, out integer) owner to postgres;

