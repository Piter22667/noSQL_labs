create table employees
(
    employee_id       integer not null
        primary key,
    employee_name     varchar(64),
    employee_position varchar(64),
    hire_date         date
);

alter table employees
    owner to postgres;

