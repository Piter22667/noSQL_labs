create view guests_used_services(guest_name, service_name, service_date) as
SELECT guests.guest_name,
       services.service_name,
       guest_services.service_date
FROM guest_services
         JOIN guests ON guests.guest_id = guest_services.guest_id
         JOIN services ON services.service_id = guest_services.service_id;

alter table guests_used_services
    owner to postgres;

