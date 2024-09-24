# Procedures Documentation

## 1. `add_event`
**Purpose**:  
This procedure is designed to insert a new event into the database, along with its associated schedule and tickets. It streamlines the process of adding multiple related entries with a single call.

**Parameters**:
- `p_event_name`: The name of the event.
- `p_event_description`: A description of the event.
- `p_date`: The date of the event.
- `p_time`: The time of the event.
- `p_venue_id`: The ID of the venue where the event will be held.
- `p_organizer_id`: The ID of the organizer of the event.
- `p_time_slot`: The time slot for the event's schedule.
- `p_topic`: The topic of the scheduled session.
- `p_speaker`: The speaker for the scheduled session.
- `p_ticket_price`: The price of tickets for the event.
- `p_ticket_quantity`: The quantity of tickets to be created.

**Usage**:
```sql
CALL add_event('Tech Conference', 'A conference about the latest in tech.', '2024-10-15', '09:00:00', 1, 1, '09:00:00', 'Future of AI', 'John Doe', 50.00, 100);
