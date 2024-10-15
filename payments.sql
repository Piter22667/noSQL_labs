create table payments
(
    payment_id    integer not null
        primary key,
    booking_id    integer
        constraint booking_id_fk
            references bookings,
    amount        integer,
    payment_date  date,
    is_deleted    boolean                  default false,
    last_modified timestamp with time zone default CURRENT_TIMESTAMP
);

alter table payments
    owner to postgres;

create trigger set_timestamp6
    before update
    on payments
    for each row
execute procedure update_timestamp6();

