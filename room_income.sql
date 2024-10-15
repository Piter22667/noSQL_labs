create view room_income(room_number, total_income) as
SELECT r.room_number,
       sum(p.amount) AS total_income
FROM rooms r
         JOIN bookings b ON r.room_id = b.room_id
         JOIN payments p ON b.booking_id = p.booking_id
GROUP BY r.room_number;

comment on view room_income is 'SELECT INCOMES FROM ALL ROOMS
';

alter table room_income
    owner to postgres;

