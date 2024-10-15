create function get_average_room_rating()
    returns TABLE(room_number integer, avg_rating real)
    language sql
as
$$
    SELECT room_number, AVG(rating)
    FROM rooms
    JOIN reviews ON  reviews.room_id = rooms.room_id
    GROUP BY room_number;
    $$;

alter function get_average_room_rating() owner to postgres;

