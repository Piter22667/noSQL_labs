create view deleted_users(guest_id, guest_name, email, phone, is_deleted, last_modified) as
SELECT guest_id,
       guest_name,
       email,
       phone,
       is_deleted,
       last_modified
FROM guests
WHERE is_deleted = true;

alter table deleted_users
    owner to postgres;

