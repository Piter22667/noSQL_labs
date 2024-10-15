create function get_client_activity(guests_id integer) returns character varying
    language plpgsql
as
$$
    DECLARE
    complaints_count INTEGER;
        status VARCHAR(64);
        BEGIN
       SELECT COUNT(*) INTO complaints_count
        FROM complaints
        WHERE guest_id = guests_id;

       IF complaints_count = 0 THEN
           status = 'No complaints';
        ELSEIF complaints_count BETWEEN 1 AND 2 THEN
           status = 'Few complaints';
        ELSE
           status = 'A lot of complaints';
       end if;

    RETURN status;
    END;

    $$;

alter function get_client_activity(integer) owner to postgres;

