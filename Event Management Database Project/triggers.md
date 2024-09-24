# Trigger Documentation

## `trigger_update_event_status`

### Purpose
This trigger is designed to automatically update the status of an event to "completed" once the event's date has passed. This helps maintain accurate event status without requiring manual updates.

### Trigger Timing
- **AFTER UPDATE** on the `Event` table.

### Functionality
- When an event is updated, this trigger checks the event's date.
- If the event's date is less than the current date, it updates the event's status to "completed."

### SQL Definition
```sql
CREATE OR REPLACE FUNCTION update_event_status()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.date < CURRENT_DATE THEN
        UPDATE Event SET status = 'completed' WHERE event_id = NEW.event_id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_update_event_status
AFTER UPDATE ON Event
FOR EACH ROW
EXECUTE FUNCTION update_event_status();
