create view users_complaints(guest_name, complaints_count) as
SELECT guests.guest_name,
       count(complaints.complaint_id) AS complaints_count
FROM guests
         JOIN complaints ON guests.guest_id = complaints.guest_id
GROUP BY guests.guest_name;

alter table users_complaints
    owner to postgres;

