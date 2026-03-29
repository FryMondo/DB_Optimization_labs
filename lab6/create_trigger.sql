CREATE OR REPLACE FUNCTION log_employee_salary_change()
RETURNS TRIGGER AS $BODY$
BEGIN
    IF (OLD.salary IS DISTINCT FROM NEW.salary) THEN
        INSERT INTO change_history (id, old_value, new_value)
        VALUES (
            'employees_salary_id' || OLD.id || '_' || clock_timestamp(),
            OLD.salary::TEXT,
            NEW.salary::TEXT
        );
END IF;
RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER trg_employee_salary_history
    AFTER UPDATE ON employees
    FOR EACH ROW
    EXECUTE FUNCTION log_employee_salary_change();