create function get_average_prices_by_services(OUT sum_price real, OUT average_price real) returns SETOF record
    language sql
as
$$

    SELECT SUM(price), AVG(price)
    FROM services
GROUP BY service_id

$$;

alter function get_average_prices_by_services(out real, out real) owner to postgres;

