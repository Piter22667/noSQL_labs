create table bookings
(
    booking_id      integer not null
        primary key,
    guest_id        integer
        constraint guest_id_fk
            references guests
            on update cascade on delete cascade,
    room_id         integer
        constraint room_id_fk
            references rooms
            on update cascade on delete cascade,
    check_in_date   date,
    check_out_date  date,
    promotion_id    integer
        constraint promotion_id_fk
            references promotions
            on update cascade on delete cascade,
    is_deleted      boolean                  default false,
    "LAST_MODIFIED" timestamp with time zone default CURRENT_TIMESTAMP
);

alter table bookings
    owner to postgres;

