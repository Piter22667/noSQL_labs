create table services
(
    service_id   serial
        primary key,
    booking_id   integer        not null
        references bookings,
    service_name varchar(100)   not null,
    service_date date           not null,
    price        numeric(10, 2) not null
);

alter table services
    owner to postgres;

