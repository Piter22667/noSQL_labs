create function update_timestamp() returns trigger
    language plpgsql
as
$$
BEGIN
NEW.last_modified = NOW();
RETURN NEW;
END;
$$;

alter function update_timestamp() owner to postgres;

