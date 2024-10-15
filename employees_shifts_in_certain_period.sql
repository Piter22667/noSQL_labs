create view employees_shifts_in_certain_period(employee_name, shift_start, shift_end) as
SELECT employees.employee_name,
       employee_shifts.shift_start,
       employee_shifts.shift_end
FROM employee_shifts
         JOIN employees ON employees.employee_id = employee_shifts.employee_id
WHERE employee_shifts.shift_start >= (CURRENT_DATE - '5 mons'::interval);

alter table employees_shifts_in_certain_period
    owner to postgres;

