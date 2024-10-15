create table maintainance_requests
(
    request_id    integer not null
        primary key,
    room_id       integer
        constraint room_id_maintainance_fk
            references rooms
            on update cascade on delete cascade,
    employee_id   integer
        constraint employee_id_maintainance_fk
            references employees
            on update cascade on delete cascade,
    request_date  date,
    status        varchar(16),
    is_deleted    boolean                  default false,
    last_modified timestamp with time zone default CURRENT_TIMESTAMP
);

alter table maintainance_requests
    owner to postgres;

create trigger set_timestamp8
    before update
    on maintainance_requests
    for each row
execute procedure update_timestamp8();

