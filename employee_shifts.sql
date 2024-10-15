create table employee_shifts
(
    shift_id      integer not null
        primary key,
    employee_id   integer
        constraint employees_fk
            references employees
            on update cascade on delete cascade,
    shift_start   date,
    shift_end     date,
    is_deleted    boolean                  default false,
    last_modified timestamp with time zone default CURRENT_TIMESTAMP
);

alter table employee_shifts
    owner to postgres;

create trigger set_timestamp7
    before update
    on employee_shifts
    for each row
execute procedure update_timestamp7();

