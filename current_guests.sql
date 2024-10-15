create view current_guests(guest_name, room_number, check_in_date, check_out_date) as
SELECT guests.guest_name,
       rooms.room_number,
       bookings.check_in_date,
       bookings.check_out_date
FROM bookings
         JOIN guests ON guests.guest_id = bookings.guest_id
         JOIN rooms ON rooms.room_id = bookings.room_id
WHERE CURRENT_DATE >= bookings.check_in_date
  AND CURRENT_DATE <= bookings.check_out_date;

alter table current_guests
    owner to postgres;

