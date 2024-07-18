CREATE TABLE addresses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    street_address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(20),
    zipcode VARCHAR(10)
);

INSERT INTO addresses (name, phone, street_address, city, state, zipcode) VALUES
('John Doe', '123-456-7890', '123 Main St', 'Anytown', 'CA', '12345'),
('Jane Smith', '987-654-3210', '456 Elm St', 'Othertown', 'TX', '67890'),
('Alice Johnson', '555-123-4567', '789 Maple Ave', 'Springfield', 'IL', '62704'),
('Bob Brown', '555-987-6543', '321 Oak St', 'Greenfield', 'WI', '53220'),
('Charlie Davis', '555-555-5555', '456 Pine St', 'Smalltown', 'MN', '55001'),
('Diana Evans', '555-444-4444', '789 Birch St', 'Bigcity', 'NY', '10001'),
('Edward Foster', '555-333-3333', '123 Cedar St', 'Middletown', 'PA', '19050'),
('Fiona Green', '555-222-2222', '456 Spruce St', 'Largetown', 'OH', '44101'),
('George Harris', '555-111-1111', '789 Redwood St', 'Tinytown', 'AZ', '85001'),
('Hannah Ives', '555-999-9999', '123 Palm St', 'Oldtown', 'FL', '33101'),
('Ivan Jenkins', '555-888-8888', '456 Cypress St', 'Newtown', 'GA', '30301'),
('Julia King', '555-777-7777', '789 Fir St', 'Capitol City', 'DC', '20001'),
('Kevin Lewis', '555-666-6666', '123 Redwood St', 'Seaside', 'CA', '93901'),
('Laura Martin', '555-555-1234', '456 Willow St', 'Riverdale', 'NY', '10463'),
('Mark Nelson', '555-444-4321', '789 Elm St', 'Hilltop', 'TX', '75001'),
('Nina Neill', '555-333-3210', '123 Pine St', 'Lowlands', 'FL', '32003'),
('Oscar Perry', '555-222-2109', '456 Maple St', 'Uptown', 'PA', '19103'),
('Paula Quinn', '555-111-1098', '789 Oak St', 'Downtown', 'IL', '60605'),
('Quincy Roberts', '555-999-0987', '123 Cedar St', 'Riverside', 'WI', '53202'),
('Rachel Stevens', '555-888-0876', '456 Birch St', 'Lakeside', 'MN', '55402'),
('Steven Turner', '555-777-0765', '789 Spruce St', 'Mountainside', 'AZ', '85004'),
('Tina Underwood', '555-666-0654', '123 Palm St', 'Valleytown', 'GA', '30002'),
('Ulysses Vaughn', '555-555-0543', '456 Cypress St', 'Plainsville', 'OH', '44102'),
('Victoria White', '555-444-0432', '789 Fir St', 'Meadowland', 'NY', '10128'),
('William Xander', '555-333-0321', '123 Redwood St', 'Harborview', 'CA', '94111'),
('Xena Young', '555-222-0210', '456 Willow St', 'Portville', 'TX', '77001'),
('Yvonne Zane', '555-111-0109', '789 Elm St', 'Bridgeport', 'PA', '19050'),
('Zachary Adams', '555-999-0008', '123 Pine St', 'Longview', 'IL', '62707');
