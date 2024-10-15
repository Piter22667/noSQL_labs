create table invoices
(
    invoice_id    integer not null
        primary key,
    booking_id    integer
        constraint booking_invoices_fk
            references bookings
            on update cascade on delete cascade,
    total_amount  integer,
    invoice_date  date,
    id_deleted    boolean                  default false,
    last_modified timestamp with time zone default CURRENT_TIMESTAMP
);

alter table invoices
    owner to postgres;

create trigger set_timestamp5
    before update
    on invoices
    for each row
execute procedure update_timestamp5();

