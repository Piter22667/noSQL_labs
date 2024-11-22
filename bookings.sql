create table bookings
(
    booking_id         serial
        primary key,
    guest_id           integer not null
        references guests,
    room_id            integer not null
        references rooms,
    check_in_date      date    not null,
    check_out_date     date    not null,
    promotion_name     varchar(50),
    promotion_discount varchar(10),
    total_amount       integer not null
);

alter table bookings
    owner to postgres;

create index idx_bookings_guest
    on bookings (guest_id);

