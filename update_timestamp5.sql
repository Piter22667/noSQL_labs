create function update_timestamp5() returns trigger
    language plpgsql
as
$$
BEGIN
NEW.last_modified = NOW();
RETURN NEW;
END;
$$;

alter function update_timestamp5() owner to postgres;

