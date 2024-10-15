create table reviews
(
    review_id     integer not null
        primary key,
    guest_id      integer
        constraint guest_id_review_fk
            references guests
            on update cascade on delete cascade,
    room_id       integer
        constraint room_id_review_fk
            references rooms
            on update cascade on delete cascade,
    rating        integer,
    review_text   varchar(256),
    review_date   date,
    is_deleted    boolean                  default false,
    last_modified timestamp with time zone default CURRENT_TIMESTAMP
);

alter table reviews
    owner to postgres;

create trigger set_timestamp9
    before update
    on reviews
    for each row
execute procedure update_timestamp9();

