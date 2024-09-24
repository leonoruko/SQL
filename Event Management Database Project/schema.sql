-- organizer table
CREATE TABLE Organizer(
    organizer_id SERIAL PRIMARY KEY,
    organizer_name VARCHAR(255) NOT NULL,
    contact_info VARCHAR(255),
    email VARCHAR(100) UNIQUE,
);

-- Venue Table
CREATE TABLE Venue(
    venue_id SERIAL PRIMARY KEY,
    venue_name VARCHAR(255) NOT NULL,
    venue_location VARCHAR(255),
    capacity INTEGER NOT NULL
);

-- Event Table
CREATE TABLE Event(
    event_id SERIAL PRIMARY KEY,
    event_name VARCHAR(255),
    event_description TEXT,
    date DATE NOT NULL,
    time TIME,
    venue_id INTEGER REFERENCES Venue(venue_id) ON DELETE SET NULL,
    organizer INTEGER REFERENCES Organizer(organizer_id) ON DELETE SET NULL
);

-- Attendee Table

CREATE TABLE Attendee(
    attendee_id SERIAL PRIMARY KEY,
    name VARCHAR (255) NOT NULL,
    email VARCHAR (100) UNIQUE,
    contact_info VARCHAR(255),
);

-- Scheule Table
CREATE TABLE Schedule(
    schedule_id SERIAL PRIMARY KEY,
    event_id INTEGER REFERENCES Event(event_id) ON DELETE CASCADE,
    time_slot TIME NOT NULL,
    topic VARCHAR(255),
    speaker VARCHAR(255),
);

-- Ticket table
CREATE TABLE Ticket(
    ticket_id SERIAL PRIMARY KEY,
    event_id INTEGER REFERENCES Event(event_id) ON DELETE CASCADE,
    attendee_id INTEGER REFERENCES Attendee(attendee_id) ON DELETE SET NULL,
    ticket_price DECIMAL(10,2) NOT NULL,
    purchase_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

-- Feedback Table
CREATE TABLE Feedback(
    feedback_id SERIAL PRIMARY KEY,
    attendee_id INTEGER REFERENCES Attendee(attendee_id) ON DELETE SET NULL,
    event_id INTEGER REFERENCES Event(event_id)ON DELETE CASCADE,
    rating INTEGER CHECK(rating>=1 OR rating <=5),
    comments TEXT,
    feedback_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Event_Attendee join table
CREATE TABLE Event_Attendee(
    event_id INTEGER REFERENCES Event(event_id) ON DELETE CASCADE,
    attendee_id INTEGER REFERENCES Attendee(attendee_id) ON DELETE CASCADE,
    PRIMARY KEY(event_id,attendee_id)
)
