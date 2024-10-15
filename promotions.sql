create table promotions
(
    promotion_id        integer not null
        primary key,
    promotion_name      varchar(64),
    discount_percentage numeric(5, 2),
    start_date          date,
    end_date            date,
    last_modified       timestamp with time zone default CURRENT_TIMESTAMP
);

alter table promotions
    owner to postgres;

create trigger set_timestamp4
    before update
    on promotions
    for each row
execute procedure update_timestamp4();

