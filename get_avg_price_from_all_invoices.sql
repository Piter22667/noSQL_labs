create function get_avg_price_from_all_invoices() returns integer
    language sql
as
$$
    SELECT AVG(total_amount)
    FROM invoices
    $$;

alter function get_avg_price_from_all_invoices() owner to postgres;

