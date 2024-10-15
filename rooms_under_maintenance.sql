create view rooms_under_maintenance(room_number, status, request_date) as
SELECT r.room_number,
       m.status,
       m.request_date
FROM maintainance_requests m
         JOIN rooms r ON m.room_id = r.room_id
WHERE m.status::text = 'In progress'::text;

comment on view rooms_under_maintenance is 'Rooms that should be improved';

alter table rooms_under_maintenance
    owner to postgres;

