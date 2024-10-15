create function sort_guests_by_id() returns trigger
    language plpgsql
as
$$
BEGIN
    -- Оновлює таблицю після кожної зміни
    PERFORM pg_notify('table_change', 'guests table was modified');
    RETURN NEW;
END;
$$;

alter function sort_guests_by_id() owner to postgres;

