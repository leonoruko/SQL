# Views - `views.sql`

## Purpose
The `views.sql` file defines a set of pre-computed queries (views) that simplify accessing and summarizing data from our event management database. Views improve query readability, reduce duplication of complex SQL, and provide faster access to commonly requested data.

## Why Use Views?
Views are particularly useful when:
- You have a complex query that is frequently used.
- You want to abstract specific logic or calculations.
- You aim to make querying data more efficient and intuitive.

By using views, you can improve the structure and readability of your queries, allowing for easier maintenance and quicker data access.

## Views Defined in `views.sql`
The following views have been defined to meet common needs within the event management system:

1. **`upcoming_events`**  
   This view provides a quick look at all events that have not yet occurred. It includes the event's title, date, organizer, and venue. By filtering out past events, this view is helpful when planning or managing future events.

2. **`event_attendees_list`**  
   This view combines data from the `Event`, `Event_Attendee`, and `Attendee` tables to show a list of attendees for each event. It provides event names, attendee contact details, and ticket information, making it easy to track participation.

3. **`venue_utilization`**  
   This view helps to monitor how often each venue is being used for events. It shows the venue's name, the number of events hosted, and the capacity, making it easy to assess venue popularity and capacity planning.

4. **`organizer_event_summary`**  
   This view summarizes how many events each organizer has hosted, along with the total number of attendees for their events. It's useful for tracking the performance and involvement of different organizers.

## How to Use `views.sql`
1. Ensure that the database schema and data have already been set up by running `schema.sql` and `insert_data.sql`.
2. Execute the `views.sql` file in a PostgreSQL client:
    ```bash
    \i /path/to/views.sql
    ```

This will create the views in the database, allowing you to run queries against them like regular tables.

## Example Queries Using Views

- Get a list of all upcoming events:
    ```sql
    SELECT * FROM upcoming_events;
    ```

- See all attendees for each event:
    ```sql
    SELECT * FROM event_attendees_list;
    ```

- Check how many events are scheduled at each venue:
    ```sql
    SELECT * FROM venue_utilization;
    ```

- Summarize the event activity of organizers:
    ```sql
    SELECT * FROM organizer_event_summary;
    ```

These queries provide quick access to important insights from the data stored in our event management system.

## Additional Information
- **Performance Considerations**: Views can enhance query performance, especially for commonly run queries. However, views that reference large tables should be used carefully to avoid slowing down the database.
- **Extensibility**: You can easily extend or modify these views to suit different business needs, such as adding filters for specific event types or organizers.
- **Testing**: After defining the views, it’s important to run queries against them to ensure they are correctly fetching the expected data.

