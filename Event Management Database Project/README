# Event Management Database Project

## Overview
The Event Management Database Project is designed to manage various aspects of events, including organizers, venues, attendees, schedules, tickets, and feedback. This project utilizes PostgreSQL as the database management system and includes SQL scripts for creating and managing the database schema, inserting data, and maintaining data integrity through triggers and procedures.

## Features
- **Organizers**: Manage event organizers with their contact details.
- **Venues**: Keep track of event venues, including location and capacity.
- **Events**: Create and manage events with descriptions, dates, and times.
- **Attendees**: Manage attendee information and their registration for events.
- **Schedules**: Organize event schedules with topics and speakers.
- **Tickets**: Handle ticket sales and track purchases.
- **Feedback**: Collect attendee feedback on events.
- **Procedures and Triggers**: Automate tasks and maintain data integrity.

## Database Schema
The project includes the following tables:
- `Organizer`
- `Venue`
- `Event`
- `Attendee`
- `Schedule`
- `Ticket`
- `Feedback`
- `Event_Attendee` (join table)

### Relationships
- Events are linked to organizers and venues.
- Attendees can register for multiple events and provide feedback.
- Schedules are associated with specific events.

## Setup Instructions

### Prerequisites
- PostgreSQL installed on your machine.
- Access to a PostgreSQL client (e.g., pgAdmin, psql).

### Installation Steps
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/event-management-db.git
   cd event-management-db
2. **Create the database**
    Open your PostgreSQL client and run the following command to create the database:
    CREATE DATABASE event_management;
3. **Execute SQL Scripts:**
    Run the provided SQL scripts in the following order:
        create_tables.sql: Creates the necessary tables for the project.
        insert_data.sql: Inserts sample data into the tables.
        views.sql: (if applicable) Creates any required views.
        procedures.sql: (if applicable) Defines any procedures.
        triggers.sql: Defines any triggers to maintain data integrity.
4. **Explore the Database**
    Use your PostgreSQL client to explore the database, run queries, and analyze the data.