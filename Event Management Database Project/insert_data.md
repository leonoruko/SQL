# Insert Data - `insert_data.sql`

## Purpose
The `insert_data.sql` file is designed to insert initial sample data into the database. This step is essential for populating the database with values so that the schema created in the `schema.sql` file can be tested, explored, and demonstrated effectively. The data inserted provides a realistic starting point for running queries and showcasing the functionality of our event management system.

## Why This File is Important
In any database project, having actual data to work with is critical. Without data:
- Queries would return empty results, limiting the ability to test functionality.
- The relationships between tables wouldn't be evident.
- The overall project would lack depth, making it harder to demonstrate or debug.

The `insert_data.sql` file ensures that there is meaningful, structured data available, making it easier to:
- Test the database schema and its relationships.
- Run queries to extract information.
- Use the project for development and demonstration purposes.

## Data Being Inserted
Here's an overview of the types of data being inserted and their purpose:

- **Organizers**: We insert a couple of organizers who are responsible for hosting events. Each organizer has contact information for further communication.
  
- **Venues**: Several venues are added where the events take place. These include fields like the name of the venue, its location, and capacity.

- **Events**: The core of our system, these entries represent different events, such as conferences or workshops. Each event references a venue and an organizer.

- **Attendees**: Individuals attending the events. They have unique contact information, making it possible to track their involvement in different events.

- **Schedules**: The time slots and topics of each event. This allows us to manage what happens at each event at specific times and which speaker is presenting.

- **Tickets**: Represents the purchase of tickets by attendees for specific events. This includes the ticket price as well.

- **Feedback**: Captures feedback from attendees after attending an event, providing a rating and comments about their experience.

- **Event Attendees (Join Table)**: This table connects events and attendees, representing the many-to-many relationship between them.

## How to Use `insert_data.sql`
To populate the database with this data:
1. Ensure the database schema has been created by executing `schema.sql`.
2. Run the `insert_data.sql` file in a PostgreSQL client (e.g., `psql`, pgAdmin, or Azure Data Studio):
    ```bash
    \i /path/to/insert_data.sql
    ```

This will insert all the necessary data into the database, and you can start running queries to retrieve and manipulate the data.

## Example Queries
Once the data is inserted, you can run queries to check if the data was inserted correctly, like:

- Fetch all events:
    ```sql
    SELECT * FROM Event;
    ```

- Fetch attendees for a specific event:
    ```sql
    SELECT a.name, a.email
    FROM Attendee a
    JOIN Event_Attendee ea ON a.id = ea.attendee_id
    WHERE ea.event_id = 1;
    ```

- List all venues with their events:
    ```sql
    SELECT v.name AS Venue, e.title AS Event
    FROM Venue v
    JOIN Event e ON v.id = e.venue_id;
    ```

These queries help demonstrate the relationships and functionality of the database with the inserted data.

## Additional Information
- **Customization**: The data in `insert_data.sql` can be customized for different use cases. You can add more organizers, events, or attendees based on specific needs.
- **Further Testing**: After inserting the data, it's a good idea to perform additional tests on the relationships, especially for things like event scheduling, ticket management, and feedback analysis.

The `insert_data.sql` file provides a solid foundation for testing and demonstrating the event management database, allowing you to verify that everything works as expected with realistic sample data.

