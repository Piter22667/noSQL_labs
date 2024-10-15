create table rooms
(
    room_id         integer not null
        primary key,
    room_number     integer,
    room_type_id    integer
        constraint room_type_id_fk
            references room_types
            on update cascade on delete cascade,
    price_per_night numeric(6, 2)
);

alter table rooms
    owner to postgres;

