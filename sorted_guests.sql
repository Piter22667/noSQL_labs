create view sorted_guests(guest_id, guest_name, email, phone, is_deleted, last_modified) as
SELECT guest_id,
       guest_name,
       email,
       phone,
       is_deleted,
       last_modified
FROM guests
ORDER BY guest_id;

alter table sorted_guests
    owner to postgres;

