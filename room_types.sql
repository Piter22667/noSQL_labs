create table room_types
(
    room_type_id integer not null
        primary key,
    room_type    varchar(64),
    description  varchar(64)
);

alter table room_types
    owner to postgres;

