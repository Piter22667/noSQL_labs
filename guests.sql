create table guests
(
    guest_id      serial
        primary key,
    name          varchar(100) not null,
    email         varchar(100) not null
        unique,
    phone         varchar(20)  not null,
    is_deleted    boolean   default false,
    last_modified timestamp default CURRENT_TIMESTAMP
);

alter table guests
    owner to postgres;

