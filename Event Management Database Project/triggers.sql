CREATE FUNCTION update_event_status()
RETURNS TRIGGER AS $$
BEGIN
    IF (NEW.date < CURRENT_DATE) THEN
        UPDATE Event SET status = 'completed' WHERE event_id = NEW.event_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_event_status
AFTER UPDATE ON Event
FOR EACH ROW
EXECUTE FUNCTION update_event_status();
