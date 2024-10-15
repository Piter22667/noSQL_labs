create view room_cleaning_summary(room_number, room_type, price_per_night, employee_name) as
SELECT rooms.room_number,
       room_types.room_type,
       rooms.price_per_night,
       employees.employee_name
FROM room_cleaning
         JOIN rooms ON room_cleaning.room_id = rooms.room_id
         JOIN room_types ON rooms.room_type_id = room_types.room_type_id
         JOIN employees ON room_cleaning.employee_id = employees.employee_id;

alter table room_cleaning_summary
    owner to postgres;

