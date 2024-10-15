create table guest_services
(
    guest_service_id integer not null
        primary key,
    guest_id         integer
        constraint guest_id_fk
            references guests
            on update cascade on delete cascade,
    service_id       integer
        constraint service_id_fk
            references services
            on update cascade on delete cascade,
    service_date     date,
    last_modified    timestamp with time zone default CURRENT_TIMESTAMP
);

alter table guest_services
    owner to postgres;

create trigger set_timestamp3
    before update
    on guest_services
    for each row
execute procedure update_timestamp3();

