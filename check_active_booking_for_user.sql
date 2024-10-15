create function check_active_booking_for_user(p_guest_id integer) returns text
    language plpgsql
as
$$
    DECLARE
    booking_count INTEGER;
    BEGIN

    SELECT COUNT(*) INTO booking_count
    FROM bookings
    WHERE public.bookings.guest_id = p_guest_id
    AND check_out_date >= CURRENT_DATE
    AND is_deleted = FALSE;

    IF booking_count > 0 THEN
    RETURN 'Client has active bookings';
    ELSE
    RETURN 'Client does not have active bookings';

    END IF;
    END;

    $$;

alter function check_active_booking_for_user(integer) owner to postgres;

