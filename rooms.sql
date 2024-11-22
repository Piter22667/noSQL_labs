create table rooms
(
    room_id         serial
        primary key,
    room_number     integer        not null
        unique,
    room_type       varchar(64)    not null,
    price_per_night numeric(10, 2) not null
);

alter table rooms
    owner to postgres;

create index idx_room_type
    on rooms (room_type);

