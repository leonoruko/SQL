# Event Management System Database

## Introduction
This database system is designed to manage events, including the management of venues, attendees, tickets, and feedback. It is built to scale and handle a variety of events such as conferences, workshops, meetups, and concerts.

## Steps to Build the Database

### 1. Database Design
The core entities include:
- **Event**: Represents each individual event.
- **Organizer**: Represents those organizing the event.
- **Venue**: Represents the location where the event takes place.
- **Attendee**: Represents people attending the events.
- **Schedule**: Breaks down the detailed schedule of the event.
- **Ticket**: Manages ticketing for events.
- **Feedback**: Stores feedback from attendees.
- **Event_Attendee**: Handles the many-to-many relationship between events and attendees.

### 2. Database Schema

**Organizer Table**:
- Stores event organizer details, including `name` and `contact_info`.

**Venue Table**:
- Stores venue details, including `location` and `capacity`.

**Event Table**:
- Stores event details such as `title`, `description`, `date`, `time`, and references to `venue_id` and `organizer_id`.

**Attendee Table**:
- Stores attendee details like `name`, `email`, and `contact_info`.

**Schedule Table**:
- Stores the detailed schedule for each event, with `time_slot`, `topic`, and `speaker`.

**Ticket Table**:
- Stores ticket information, with references to `attendee_id` and `event_id`, as well as `ticket_price`.

**Feedback Table**:
- Collects feedback from attendees for each event, including `rating` and `comments`.

**Event_Attendee Table**:
- A join table that manages the many-to-many relationship between events and attendees.

### 3. Installation Steps
To run this project:
1. Install PostgreSQL.
2. Clone the repository from GitHub.
3. Run the SQL scripts to set up the database.
4. Connect to the database using a client like Azure Data Studio or psql.
