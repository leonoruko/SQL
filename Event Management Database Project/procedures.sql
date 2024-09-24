CREATE PROCEDURE add_event(
    p_event_name VARCHAR,
    p_event_description TEXT,
    p_date DATE,
    p_time TIME,
    p_venue_id INTEGER,
    p_organizer_id INTEGER,
    p_time_slot TIME,
    p_topic VARCHAR,
    p_speaker VARCHAR,
    p_ticket_price DECIMAL,
    p_ticket_quantity INTEGER
)
LANGUAGE plpgsql AS $$
DECLARE
    new_event_id INTEGER;
BEGIN
    -- Insert new event
    INSERT INTO Event(event_name, event_description, date, time, venue_id, organizer)
    VALUES (p_event_name, p_event_description, p_date, p_time, p_venue_id, p_organizer_id)
    RETURNING event_id INTO new_event_id;

    -- Insert schedule for the event
    INSERT INTO Schedule(event_id, time_slot, topic, speaker)
    VALUES (new_event_id, p_time_slot, p_topic, p_speaker);

    -- Insert tickets for the event
    FOR i IN 1..p_ticket_quantity LOOP
        INSERT INTO Ticket(event_id, ticket_price)
        VALUES (new_event_id, p_ticket_price);
    END LOOP;
END;
$$;
