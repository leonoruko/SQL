-- Insert organizers
INSERT INTO Organizer (name, contact_info, email)
VALUES 
('Tech Conference Inc.', 'techinc@events.com', 'techconference@events.com'),
('Workshop Central', 'info@workshopcentral.com', 'organizer@workshopcentral.com');

-- Insert venues
INSERT INTO Venue (name, location, capacity)
VALUES
('Downtown Conference Center', '123 Main St, Cityville', 500),
('Tech Park', '42 Silicon Alley, Techville', 300),
('The Grand Auditorium', '789 Broadway, Citytown', 1000);

-- Insert events
INSERT INTO Event (title, description, date, time, venue_id, organizer_id)
VALUES
('Tech Innovators Conference', 'A conference for technology innovators.', '2024-12-01', '09:00:00', 1, 1),
('AI and Machine Learning Workshop', 'An introductory workshop to AI and Machine Learning.', '2024-11-15', '14:00:00', 2, 2),
('Startup Pitch Night', 'An event where startups pitch their ideas.', '2024-12-10', '18:30:00', 3, 1);

-- Insert attendees
INSERT INTO Attendee (name, email, contact_info)
VALUES
('John Doe', 'johndoe@email.com', '555-1234'),
('Jane Smith', 'janesmith@email.com', '555-5678'),
('Michael Johnson', 'mjohnson@email.com', '555-9012');

-- Insert schedule for events
INSERT INTO Schedule (event_id, time_slot, topic, speaker)
VALUES
(1, '09:30:00', 'The Future of Tech', 'Dr. Emily Rivera'),
(1, '11:00:00', 'Blockchain Revolution', 'Mark Johnson'),
(2, '14:30:00', 'Introduction to Machine Learning', 'Prof. Alan Turing'),
(2, '16:00:00', 'Neural Networks for Beginners', 'Dr. Ada Lovelace');

-- Insert tickets
INSERT INTO Ticket (event_id, attendee_id, ticket_price)
VALUES
(1, 1, 150.00),
(1, 2, 150.00),
(2, 3, 75.00);

-- Insert feedback
INSERT INTO Feedback (attendee_id, event_id, rating, comments)
VALUES
(1, 1, 5, 'Amazing conference, very insightful!'),
(2, 1, 4, 'Good event, but could have used more networking time.'),
(3, 2, 5, 'Loved the hands-on workshop!');

-- Insert attendees for events (Event_Attendee table)
INSERT INTO Event_Attendee (event_id, attendee_id)
VALUES
(1, 1),
(1, 2),
(2, 3);
