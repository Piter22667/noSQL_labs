create table room_cleaning
(
    cleaning_id   integer not null
        primary key,
    room_id       integer
        constraint room_id_fk
            references rooms
            on update cascade on delete cascade,
    employee_id   integer
        constraint employee_id_fk
            references employees
            on update cascade on delete cascade,
    cleaning_date date,
    is_deleted    boolean                  default false,
    last_modified timestamp with time zone default CURRENT_TIMESTAMP
);

alter table room_cleaning
    owner to postgres;

create trigger set_timestamp10
    before update
    on room_cleaning
    for each row
execute procedure update_timestamp10();

