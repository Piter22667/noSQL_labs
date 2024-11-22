create table reviews
(
    review_id   serial
        primary key,
    guest_id    integer not null
        references guests,
    room_id     integer not null
        references rooms,
    rating      integer
        constraint reviews_rating_check
            check ((rating >= 1) AND (rating <= 5)),
    text        text,
    review_date date    not null
);

alter table reviews
    owner to postgres;

create index idx_review_rating
    on reviews (rating);

create index idx_reviews_guest
    on reviews (guest_id);

