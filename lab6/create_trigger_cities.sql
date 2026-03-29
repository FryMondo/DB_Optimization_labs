CREATE OR REPLACE FUNCTION log_city_name_change()
RETURNS TRIGGER AS $BODY$
BEGIN
    IF (OLD.name IS DISTINCT FROM NEW.name) THEN
        INSERT INTO change_history (id, old_value, new_value)
        VALUES (
            'cities_name_id' || OLD.id || '_' || clock_timestamp(),
            OLD.name,
            NEW.name
        );
END IF;
RETURN NEW;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER trg_city_name_history
    AFTER UPDATE ON cities
    FOR EACH ROW
    EXECUTE FUNCTION log_city_name_change();