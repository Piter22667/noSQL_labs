create view room_cleaning_schedule(room_number, employee_name, cleaning_date) as
SELECT r.room_number,
       e.employee_name,
       rc.cleaning_date
FROM room_cleaning rc
         JOIN rooms r ON rc.room_id = r.room_id
         JOIN employees e ON rc.employee_id = e.employee_id;

comment on view room_cleaning_schedule is 'View for showing room cleaning schedules, including room numbers, employee names, and cleaning dates.';

alter table room_cleaning_schedule
    owner to postgres;

