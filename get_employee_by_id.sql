create function get_employee_by_id(employees_id integer) returns character varying
    language sql
as
$$
    SELECT employee_name
    FROM employees
    WHERE  employees_id = employee_id
$$;

alter function get_employee_by_id(integer) owner to postgres;

