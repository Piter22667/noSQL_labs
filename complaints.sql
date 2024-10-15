create table complaints
(
    complaint_id   integer not null
        primary key,
    guest_id       integer
        constraint guest_id_fk
            references guests,
    complaint_text varchar(256),
    complaint_date date,
    last_modified  timestamp with time zone default CURRENT_TIMESTAMP
);

alter table complaints
    owner to postgres;

