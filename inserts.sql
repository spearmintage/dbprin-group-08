INSERT INTO branch (
        branch_name,
        branch_addr1,
        branch_addr2,
        branch_city,
        branch_postcode,
        branch_country_code,
        branch_email,
        branch_phone_country_code,
        branch_phone_number
    )
VALUES (
        'Central London',
        '123 Main St',
        'Suite 1',
        'London',
        'SW1A 1AA',
        'GB',
        'london@ses.edu',
        '+44',
        '1234567890'
    ),
    (
        'Manchester Hub',
        '45 Oxford Road',
        NULL,
        'Manchester',
        'M1 7ED',
        'GB',
        'manchester@ses.edu',
        '+44',
        '9876543210'
    ),
    (
        'Edinburgh Campus',
        '789 Royal Mile',
        NULL,
        'Edinburgh',
        'EH1 1YZ',
        'GB',
        'edinburgh@ses.edu',
        '+44',
        '1122334455'
    ),
    (
        'Bristol Centre',
        '67 College Green',
        NULL,
        'Bristol',
        'BS1 5TA',
        'GB',
        'bristol@ses.edu',
        '+44',
        '5566778899'
    ),
    (
        'Birmingham South',
        '34 High St',
        NULL,
        'Birmingham',
        'B4 7XX',
        'GB',
        'birmingham@ses.edu',
        '+44',
        '9988776655'
    ),
    (
        'Cardiff Academy',
        '12 Queen St',
        NULL,
        'Cardiff',
        'CF10 2FW',
        'GB',
        'cardiff@ses.edu',
        '+44',
        '3344556677'
    ),
    (
        'Oxford Branch',
        '23 Scholars Lane',
        NULL,
        'Oxford',
        'OX1 2JD',
        'GB',
        'oxford@ses.edu',
        '+44',
        '6677889900'
    ),
    (
        'Leeds Office',
        '89 University Way',
        NULL,
        'Leeds',
        'LS2 3AY',
        'GB',
        'leeds@ses.edu',
        '+44',
        '4455667788'
    ),
    (
        'Glasgow Learning',
        '56 Buchanan St',
        NULL,
        'Glasgow',
        'G1 3HL',
        'GB',
        'glasgow@ses.edu',
        '+44',
        '2233445566'
    ),
    (
        'Liverpool Institute',
        '90 Lime St',
        NULL,
        'Liverpool',
        'L1 1NN',
        'GB',
        'liverpool@ses.edu',
        '+44',
        '7788990011'
    );


INSERT INTO room (
        room_id,
        branch_id,
        room_name,
        room_type,
        capacity
    )
VALUES (1, 1, 'Room A', 'Classroom', 30),
    (2, 1, 'Room B', 'Computer Lab', 20),
    (3, 1, 'Room C', 'Lecture Hall', 100),
    (4, 2, 'Room A', 'Science Lab', 25),
    (5, 2, 'Room B', 'Classroom', 35),
    (6, 3, 'Room A', 'Computer Lab', 15),
    (7, 3, 'Room G', 'Lecture Hall', 120),
    (8, 4, 'Room H', 'Science Lab', 20),
    (9, 4, 'Room I', 'Classroom', 40),
    (10, 5, 'Room J', 'Computer Lab', 25),
    (11, 5, 'Room K', 'Lecture Hall', 80),
    (12, 6, 'Room L', 'Science Lab', 30),
    (13, 6, 'Room M', 'Classroom', 50),
    (14, 7, 'Room N', 'Computer Lab', 20),
    (15, 8, 'Room O', 'Lecture Hall', 150),
    (16, 8, 'Room P', 'Classroom', 45),
    (17, 9, 'Room Q', 'Science Lab', 35),
    (18, 9, 'Room R', 'Classroom', 60),
    (19, 10, 'Room S', 'Computer Lab', 10),
    (20, 10, 'Room T', 'Lecture Hall', 200);


INSERT INTO facility (facility_name)
VALUES ('Projector'),
    ('Whiteboard'),
    ('Smart Board'),
    ('Desktop Computers'),
    ('Printer'),
    ('Scanner'),
    ('3D Printer'),
    ('Microscope'),
    ('Lab Equipment Set'),
    ('Sound System'),
    ('Video Conferencing Equipment'),
    ('Smart Podium'),
    ('Lockers');


INSERT INTO room_facility (room_id, facility_id, quantity)
VALUES (1, 1, 1),
    -- Projector
    (1, 2, 1),
    -- Whiteboard
    (2, 4, 20),
    -- Desktop Computers
    (2, 5, 1),
    -- Printer
    (2, 6, 1),
    -- Scanner
    (3, 1, 1),
    -- Projector
    (3, 10, 1),
    -- Sound System
    (4, 8, 1),
    -- Microscope
    (4, 9, 1),
    -- Lab Equipment Set
    (5, 1, 1),
    -- Projector
    (5, 2, 1),
    -- Whiteboard
    (6, 4, 15),
    -- Desktop Computers
    (6, 5, 1),
    -- Printer
    (6, 6, 1),
    -- Scanner
    (10, 4, 25),
    -- Desktop Computers
    (10, 5, 1),
    -- Printer
    (10, 6, 1),
    -- Scanner
    (11, 1, 1),
    -- Projector
    (11, 10, 1),
    -- Sound System
    (12, 8, 1),
    -- Microscope
    (12, 9, 1),
    -- Lab Equipment Set
    (13, 1, 1),
    -- Projector
    (13, 2, 1),
    -- Whiteboard
    (14, 4, 20),
    -- Desktop Computers
    (14, 5, 1),
    -- Printer
    (14, 6, 1);


-- Scanner
INSERT INTO department(dept_name, description)
VALUES (
        'Technology',
        'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'
    ),
    (
        'Humanities',
        'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae.'
    ),
    (
        'HR',
        'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.'
    ),
    (
        'Business',
        'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.'
    ),
    (
        'Vocational Training',
        'In congue. Etiam justo. Etiam pretium iaculis justo.'
    ),
    (
        'Sciences',
        'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.'
    ),
    (
        'Health & Medical',
        'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.'
    ),
    (
        'Social Sciences',
        'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.'
    ),
    (
        'Computer Science',
        'Focus on software, hardware, and IT systems'
    ),
    (
        'Business Administration',
        'Studies in business management and strategy'
    ),
    (
        'Engineering',
        'Covers civil, mechanical, and electrical engineering'
    ),
    (
        'Biology',
        'Studies in life sciences and organisms'
    ),
    (
        'Physics',
        'Focus on the laws of nature and physical phenomena'
    ),
    (
        'Mathematics',
        'Specializes in pure and applied mathematics'
    ),
    (
        'History',
        'Focus on historical events and analysis'
    ),
    (
        'Literature',
        'Studies in prose, poetry, and drama'
    ),
    ('Arts', 'Focus on visual and performing arts'),
    (
        'Education',
        'Dedicated to teaching methods and pedagogy'
    );


INSERT INTO health_condition (health_condition_name, health_condition_notes)
VALUES (
        'Asthma',
        'Chronic respiratory condition requiring inhalers'
    ),
    (
        'Diabetes',
        'Metabolic disease requiring insulin management'
    ),
    (
        'Epilepsy',
        'Neurological disorder with recurring seizures'
    ),
    (
        'Anxiety',
        'Mental health condition causing excessive worry'
    ),
    ('Autism Spectrum Disorder', NULL),
    (
        'Depression',
        'Mood disorder with persistent feelings of sadness'
    ),
    (
        'ADHD',
        'Attention Deficit Hyperactivity Disorder'
    ),
    (
        'Dyslexia',
        'Learning disorder affecting reading and writing'
    ),
    ('Partial Blindness', NULL),
    ('Post-Traumatic Stress Disorder', NULL),
    (
        'Allergies',
        'Reactions to substances like pollen or nuts'
    ),
    ('Discalculia', NULL),
    (
        'Migraines',
        'Severe headaches often accompanied by nausea'
    ),
    (
        'Arthritis',
        'Inflammation of joints causing pain and stiffness'
    ),
    ('Auditory Processing Disorder', NULL);


INSERT INTO role (role_name, role_description)
VALUES ('Administrator', 'Manages administrative tasks'),
    ('IT Support', 'Provides technical support'),
    ('Tutor', 'Teaches students'),
    ('Cleaner', 'Maintains cleanliness of the branch'),
    (
        'Security Guard',
        'Ensures security of the premises'
    ),
    (
        'Receptionist',
        'Handles inquiries and front desk duties'
    ),
    (
        'Lab Technician',
        'Maintains and prepares lab equipment'
    ),
    (
        'Finance Manager',
        'Manages financial records and budgeting'
    ),
    ('HR Manager', 'Oversees staff and HR functions'),
    (
        'Academic Advisor',
        'Provides guidance to students'
    ),
    (
        'Course Coordinator',
        'Coordinates courses and schedules'
    ),
    (
        'Marketing Manager',
        'Handles marketing and advertising'
    ),
    ('Library Manager', 'Oversees library operations'),
    (
        'Counselor',
        'Provides student counseling services'
    ),
    (
        'Workshop Facilitator',
        'Leads workshops and trainings'
    ),
    (
        'Research Assistant',
        'Supports research projects'
    ),
    ('Event Organizer', 'Plans and manages events'),
    (
        'Maintenance Worker',
        'Handles repairs and maintenance'
    ),
    ('Driver', 'Transports staff or equipment'),
    (
        'Data Analyst',
        'Analyzes and reports on data trends'
    );


INSERT INTO student(
        student_email,
        student_first_name,
        student_middle_name,
        student_last_name,
        student_title,
        student_mobile_code,
        student_mobile,
        student_addr1,
        student_addr2,
        student_city,
        student_postcode,
        student_country_code,
        student_date_of_birth
    )
VALUES (
        'oliver.jackson11@example.com',
        'Oliver',
        NULL,
        'Jackson',
        'Mr',
        '+44',
        '7123456791',
        '654 Elm Crescent',
        'Flat 2',
        'Liverpool',
        'L1 2AB',
        'UK',
        '1998-10-24'
    ),
    (
        'isabella.martin12@example.com',
        'Isabella',
        NULL,
        'Martin',
        'Ms',
        '+44',
        '7123456792',
        '987 Oak Court',
        NULL,
        'Southampton',
        'SO14 1AD',
        'UK',
        '2000-04-15'
    ),
    (
        'charlie.clark13@example.com',
        'Charlie',
        'F.',
        'Clark',
        'Mx',
        '+44',
        '7123456793',
        '123 Cherry Way',
        'Unit 6',
        'Manchester',
        'M2 2HL',
        'UK',
        '1997-01-05'
    ),
    (
        'ava.walker14@example.com',
        'Ava',
        NULL,
        'Walker',
        'Miss',
        '+44',
        '7123456794',
        '432 Palm Road',
        NULL,
        'Newcastle',
        'NE1 3QX',
        'UK',
        '1999-12-22'
    ),
    (
        'noah.lewis15@example.com',
        'Noah',
        'G.',
        'Lewis',
        'Mr',
        '+44',
        '7123456795',
        '789 Maple Street',
        'Suite 7',
        'Leeds',
        'LS2 6ZB',
        'UK',
        '2001-06-10'
    ),
    (
        'mia.harris16@example.com',
        'Mia',
        NULL,
        'Harris',
        'Ms',
        '+44',
        '7123456796',
        '654 Cedar Drive',
        'Flat 3A',
        'Bristol',
        'BS3 7DP',
        'UK',
        '1999-03-29'
    ),
    (
        'ethan.young17@example.com',
        'Ethan',
        'H.',
        'Young',
        'Mr',
        '+44',
        '7123456797',
        '321 Birch Lane',
        NULL,
        'Edinburgh',
        'EH2 4DD',
        'UK',
        '2002-02-18'
    ),
    (
        'sophie.white18@example.com',
        'Sophie',
        NULL,
        'White',
        'Ms',
        '+44',
        '7123456798',
        '987 Pine Street',
        'Apt 2B',
        'Nottingham',
        'NG2 5LN',
        'UK',
        '2000-09-09'
    ),
    (
        'william.king19@example.com',
        'William',
        'I.',
        'King',
        'Mr',
        '+44',
        '7123456799',
        '123 Oak Road',
        'Flat 4',
        'Liverpool',
        'L3 7RB',
        'UK',
        '1998-12-03'
    ),
    (
        'lucy.green20@example.com',
        'Lucy',
        NULL,
        'Green',
        'Ms',
        '+44',
        '7123456800',
        '876 Willow Crescent',
        'Block 1',
        'Glasgow',
        'G2 5RY',
        'UK',
        '2001-01-17'
    ),
    (
        'jack.scott21@example.com',
        'Jack',
        'J.',
        'Scott',
        'Mr',
        '+44',
        '7123456801',
        '234 Maple Crescent',
        'Unit 9',
        'Southampton',
        'SO15 1RT',
        'UK',
        '2002-06-27'
    ),
    (
        'olivia.adams22@example.com',
        'Olivia',
        NULL,
        'Adams',
        'Miss',
        '+44',
        '7123456802',
        '567 Oak Boulevard',
        'Suite 5A',
        'London',
        'E1 7AA',
        'UK',
        '2000-11-02'
    ),
    (
        'harry.martin23@example.com',
        'Harry',
        'K.',
        'Martin',
        'Mr',
        '+44',
        '7123456803',
        '876 Birch Street',
        'Unit 2A',
        'Manchester',
        'M3 8DP',
        'UK',
        '1999-10-14'
    ),
    (
        'amelia.evans24@example.com',
        'Amelia',
        NULL,
        'Evans',
        'Miss',
        '+44',
        '7123456804',
        '654 Pine Crescent',
        NULL,
        'Bristol',
        'BS4 2AQ',
        'UK',
        '1998-05-30'
    ),
    (
        'jacob.baker25@example.com',
        'Jacob',
        'L.',
        'Baker',
        'Mr',
        '+44',
        '7123456805',
        '321 Cedar Street',
        'Block 4',
        'Leeds',
        'LS3 9DF',
        'UK',
        '2001-07-11'
    ),
    (
        'ella.james26@example.com',
        'Ella',
        NULL,
        'James',
        'Ms',
        '+44',
        '7123456806',
        '432 Oak Crescent',
        'Flat 6',
        'Cardiff',
        'CF3 4AP',
        'UK',
        '1999-08-19'
    ),
    (
        'lucas.davis27@example.com',
        'Lucas',
        'M.',
        'Davis',
        'Mr',
        '+44',
        '7123456807',
        '789 Elm Lane',
        'Suite 3',
        'Nottingham',
        'NG3 5QR',
        'UK',
        '1997-12-08'
    ),
    (
        'charlotte.bell28@example.com',
        'Charlotte',
        NULL,
        'Bell',
        'Miss',
        '+44',
        '7123456808',
        '123 Pine Avenue',
        'Flat 7B',
        'Birmingham',
        'B2 3YX',
        'UK',
        '2001-04-24'
    ),
    (
        'james.martinez29@example.com',
        'James',
        'N.',
        'Martinez',
        'Mr',
        '+44',
        '7123456809',
        '567 Oak Road',
        'Unit 3',
        'Glasgow',
        'G3 6EH',
        'UK',
        '1998-10-01'
    ),
    (
        'harper.johnson30@example.com',
        'Harper',
        NULL,
        'Johnson',
        'Miss',
        '+44',
        '7123456810',
        '432 Birch Road',
        'Flat 8A',
        'London',
        'N1 7PJ',
        'UK',
        '2000-03-14'
    ),
    (
        'benjamin.clarke31@example.com',
        'Benjamin',
        'O.',
        'Clarke',
        'Mr',
        '+44',
        '7123456811',
        '234 Maple Avenue',
        'Block 9',
        'Bristol',
        'BS5 6UX',
        'UK',
        '1997-09-27'
    ),
    (
        'grace.harris32@example.com',
        'Grace',
        NULL,
        'Harris',
        'Miss',
        '+44',
        '7123456812',
        '876 Birch Avenue',
        NULL,
        'Cardiff',
        'CF4 7QA',
        'UK',
        '2001-02-22'
    ),
    (
        'zachary.lee33@example.com',
        'Zachary',
        'P.',
        'Lee',
        'Mr',
        '+44',
        '7123456813',
        '123 Willow Street',
        'Suite 10',
        'Leeds',
        'LS4 3BG',
        'UK',
        '2002-01-03'
    ),
    (
        'scarlett.green34@example.com',
        'Scarlett',
        NULL,
        'Green',
        'Ms',
        '+44',
        '7123456814',
        '654 Pine Road',
        NULL,
        'Southampton',
        'SO16 5LR',
        'UK',
        '1999-11-25'
    ),
    (
        'ryan.taylor35@example.com',
        'Ryan',
        'Q.',
        'Taylor',
        'Mr',
        '+44',
        '7123456815',
        '789 Oak Street',
        'Unit 2',
        'London',
        'E2 5BQ',
        'UK',
        '2000-07-21'
    ),
    (
        'arabella.king36@example.com',
        'Arabella',
        NULL,
        'King',
        'Miss',
        '+44',
        '7123456816',
        '432 Cedar Avenue',
        'Flat 4B',
        'Bristol',
        'BS6 8WQ',
        'UK',
        '1997-12-19'
    ),
    (
        'luca.miller37@example.com',
        'Luca',
        'R.',
        'Miller',
        'Mr',
        '+44',
        '7123456817',
        '123 Birch Boulevard',
        'Block 5',
        'Glasgow',
        'G4 2ZA',
        'UK',
        '1998-09-10'
    ),
    (
        'grace.bennett38@example.com',
        'Grace',
        NULL,
        'Bennett',
        'Miss',
        '+44',
        '7123456818',
        '654 Oak Avenue',
        'Flat 9',
        'Nottingham',
        'NG4 7XT',
        'UK',
        '1999-05-06'
    ),
    (
        'maximus.scott39@example.com',
        'Maximus',
        'S.',
        'Scott',
        'Mr',
        '+44',
        '7123456819',
        '987 Cedar Road',
        NULL,
        'Manchester',
        'M4 9LD',
        'UK',
        '2001-03-03'
    ),
    (
        'lucia.morris40@example.com',
        'Lucia',
        NULL,
        'Morris',
        'Ms',
        '+44',
        '7123456820',
        '321 Birch Boulevard',
        'Unit 8A',
        'Leeds',
        'LS5 4PT',
        'UK',
        '1998-02-18'
    ),
    (
        'theo.robinson41@example.com',
        'Theo',
        'T.',
        'Robinson',
        'Mr',
        '+44',
        '7123456821',
        '876 Maple Avenue',
        'Flat 7',
        'Southampton',
        'SO17 2RU',
        'UK',
        '2002-12-01'
    ),
    (
        'eliza.cameron42@example.com',
        'Eliza',
        'V.',
        'Cameron',
        'Ms',
        '+44',
        '7123456822',
        '234 Cedar Crescent',
        'Block 2A',
        'London',
        'W1B 1AB',
        'UK',
        '2000-02-09'
    );


INSERT INTO student_health_condition (
        student_id,
        health_condition_id,
        severity,
        student_health_notes
    )
VALUES (
        1,
        3,
        5,
        'Mauris nisi mi, dignissim in porttitor sit amet, iaculis volutpat nibh.'
    ),
    (
        4,
        3,
        5,
        'Fusce aliquam, ligula id faucibus varius,'
    ),
    (7, 7, 2, 'Nullam tempus elit euismod, '),
    (
        8,
        2,
        5,
        'Fusce quis est quis risus convallis egestas et nec orci.'
    ),
    (
        9,
        1,
        1,
        'Praesent lorem nunc, gravida nec lacinia at, eleifend nec sem.'
    ),
    (12, 1, 2, 'Donec eget dignissim libero.'),
    (
        22,
        12,
        4,
        'Nunc semper ante quis dui placerat, et rhoncus eros mattis.'
    ),
    (13, 10, 3, 'Pellentesque ut lobortis libero.'),
    (
        15,
        2,
        4,
        'Sed risus neque, tempor ultricies justo in, fringilla vehicula augue. Integer pretium ligula ac sapien placerat luctus.'
    ),
    (
        18,
        7,
        5,
        'Donec sit amet turpis vel turpis tempor egestas.'
    ),
    (
        20,
        1,
        1,
        'Curabitur eleifend quam eu purus volutpat congue.'
    ),
    (
        21,
        1,
        1,
        'Etiam nec augue felis. In ultrices tellus et elementum vestibulum.'
    ),
    (
        21,
        2,
        4,
        'finibus sit amet efficitur vel, mattis molestie ex.'
    ),
    (
        23,
        6,
        5,
        'Quisque ac neque rutrum, cursus dolor non, aliquam tellus.'
    ),
    (
        23,
        1,
        3,
        'Quisque ac neque rutrum, cursus dolor non, aliquam tellus.'
    ),
    (
        29,
        10,
        2,
        'Fusce eget nulla auctor, fringilla erat ut, ullamcorper neque.'
    );


INSERT INTO course (
        dept_id,
        course_name,
        course_description,
        course_cost
    )
VALUES (
        1,
        'grid-enabled',
        'faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis',
        7819.92
    ),
    (
        1,
        'Ergonomic',
        'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a',
        4972.83
    ),
    (
        2,
        'infrastructure',
        'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique',
        8792.69
    ),
    (
        2,
        'logistical',
        'pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla',
        920.82
    ),
    (
        3,
        'application',
        'ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum',
        9055.25
    ),
    (
        4,
        'portal',
        'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec',
        7907.27
    ),
    (
        4,
        'info-mediaries',
        'morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis',
        7676.67
    ),
    (
        4,
        'Robust',
        'est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim',
        2835.99
    ),
    (
        4,
        'coherent',
        'ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit',
        8169.09
    ),
    (
        5,
        'even-keeled',
        'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris',
        4685.27
    ),
    (
        5,
        'middleware',
        'molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in',
        8737.43
    ),
    (
        6,
        'transitional',
        'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras',
        848.6
    ),
    (
        7,
        'Realigned',
        'pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum',
        5364.57
    ),
    (
        8,
        'Lorem ipsum',
        'pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue',
        5842.37
    ),
    (
        9,
        'foreground',
        'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia',
        8105.81
    ),
    (
        9,
        'encompassing',
        'vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi',
        5925.59
    ),
    (
        10,
        'array',
        'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel',
        7308.02
    ),
    (
        11,
        'core',
        'odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet',
        4951.36
    ),
    (
        12,
        'protocol',
        'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum',
        3720.26
    ),
    (
        13,
        'Implemented',
        'congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut',
        4720.98
    ),
    (
        14,
        'Cloned',
        'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam',
        9369.12
    ),
    (
        15,
        'Multi-channelled',
        'in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis',
        116.93
    ),
    (
        16,
        'Single-channelled',
        'porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo',
        4144.1
    ),
    (
        17,
        'Stand-alone',
        'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus',
        5956.19
    ),
    (
        18,
        'framework',
        'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui',
        6241.94
    );


INSERT INTO subject(
        subject_name,
        subject_level,
        subject_description
    )
VALUES (
        'Mathematics',
        5,
        'Study of numbers, quantities, and shapes.'
    ),
    (
        'Mathematics',
        4,
        'Study of numbers, quantities, and shapes.'
    ),
    (
        'Mathematics',
        6,
        'Study of numbers, quantities, and shapes.'
    ),
    (
        'English Literature',
        4,
        'Analysis and interpretation of literary texts.'
    ),
    (
        'English Literature',
        5,
        'Analysis and interpretation of literary texts.'
    ),
    (
        'English Literature',
        7,
        'Analysis and interpretation of literary texts.'
    ),
    (
        'Computer Science',
        6,
        'Study of computation, programming, and systems.'
    ),
    (
        'Computer Science',
        4,
        'Study of computation, programming, and systems.'
    ),
    (
        'Computer Science',
        5,
        'Study of computation, programming, and systems.'
    ),
    (
        'Physics',
        5,
        'Study of matter, energy, and the physical universe.'
    ),
    (
        'Physics',
        6,
        'Study of matter, energy, and the physical universe.'
    ),
    (
        'Physics',
        7,
        'Study of matter, energy, and the physical universe.'
    ),
    (
        'Chemistry',
        4,
        'Study of substances and their properties.'
    ),
    (
        'Chemistry',
        5,
        'Study of substances and their properties.'
    ),
    (
        'Chemistry',
        6,
        'Study of substances and their properties.'
    ),
    (
        'Biology',
        5,
        'Study of living organisms and ecosystems.'
    ),
    (
        'History',
        4,
        'Study of past events and their impact.'
    ),
    (
        'Geography',
        4,
        'Study of the Earth and its features.'
    ),
    (
        'Economics',
        5,
        'Study of production, distribution, and consumption.'
    ),
    (
        'Economics',
        6,
        'Study of production, distribution, and consumption.'
    ),
    (
        'Economics',
        7,
        'Study of production, distribution, and consumption.'
    ),
    (
        'Psychology',
        5,
        'Study of mind and behavior.'
    ),
    (
        'Psychology',
        6,
        'Study of mind and behavior.'
    ),
    (
        'Psychology',
        7,
        'Study of mind and behavior.'
    ),
    (
        'Philosophy',
        5,
        'Exploration of fundamental questions about existence.'
    ),
    (
        'Sociology',
        4,
        'Study of human society and social relationships.'
    ),
    (
        'Sociology',
        5,
        'Study of human society and social relationships.'
    ),
    (
        'Sociology',
        6,
        'Study of human society and social relationships.'
    ),
    (
        'Political Science',
        5,
        'Study of politics and government systems.'
    ),
    (
        'Political Science',
        6,
        'Study of politics and government systems.'
    ),
    (
        'Political Science',
        7,
        'Study of politics and government systems.'
    ),
    (
        'Art',
        4,
        'Creative expression through visual mediums.'
    ),
    (
        'Art',
        5,
        'Creative expression through visual mediums.'
    ),
    (
        'Art',
        6,
        'Creative expression through visual mediums.'
    ),
    (
        'Music',
        4,
        'Study and practice of musical theory and performance.'
    ),
    (
        'Drama',
        4,
        'Study and practice of theatrical performance.'
    ),
    (
        'Business Studies',
        6,
        'Principles of business and management.'
    ),
    (
        'Law',
        5,
        'Study of legal systems and jurisprudence.'
    ),
    (
        'Law',
        6,
        'Study of legal systems and jurisprudence.'
    ),
    (
        'Law',
        7,
        'Study of legal systems and jurisprudence.'
    ),
    (
        'Environmental Science',
        5,
        'Study of the environment and sustainability.'
    ),
    (
        'Engineering',
        6,
        'Application of science and math to solve problems.'
    ),
    (
        'Engineering',
        7,
        'Application of science and math to solve problems.'
    );


INSERT INTO course_subject (course_id, subject_id)
VALUES (1, 5),
    (1, 10),
    (2, 12),
    (3, 8),
    (3, 15),
    (4, 20),
    (5, 25),
    (6, 30),
    (7, 35),
    (8, 40),
    (9, 18),
    (10, 22),
    (11, 11),
    (12, 7),
    (13, 14),
    (14, 28),
    (15, 19),
    (16, 2),
    (17, 32),
    (18, 26),
    (19, 13),
    (20, 33),
    (21, 3),
    (22, 21),
    (23, 16),
    (24, 38),
    (25, 4),
    (6, 27),
    (9, 9),
    (12, 37);


INSERT INTO SESSION(
        subject_id,
        room_id,
        session_type,
        session_status,
        session_name,
        session_start,
        session_end,
        is_online
    )
VALUES (
        1,
        1,
        'Lecture',
        'Scheduled',
        'Advanced Algebra',
        '2024-11-25 09:00:00',
        '2024-11-25 10:30:00',
        false
    ),
    (
        2,
        2,
        'Lecture',
        'Scheduled',
        'Introduction to Calculus',
        '2024-11-25 11:00:00',
        '2024-11-25 12:30:00',
        false
    ),
    (
        7,
        NULL,
        'Practical',
        'Scheduled',
        'Programming Basics Workshop',
        '2024-11-26 14:00:00',
        '2024-11-26 15:30:00',
        TRUE
    ),
    (
        10,
        4,
        'Lecture',
        'Scheduled',
        'Physics of Motion',
        '2024-11-26 09:00:00',
        '2024-11-26 10:30:00',
        false
    ),
    (
        13,
        5,
        'Practical',
        'Scheduled',
        'Chemical Properties Lab',
        '2024-11-27 14:00:00',
        '2024-11-27 15:30:00',
        false
    ),
    (
        16,
        6,
        'Lecture',
        'Scheduled',
        'Ecosystem Dynamics',
        '2024-11-28 10:00:00',
        '2024-11-28 11:30:00',
        false
    ),
    (
        17,
        9,
        'Lecture',
        'Scheduled',
        'World War II Analysis',
        '2024-11-28 13:00:00',
        '2024-11-28 14:30:00',
        false
    ),
    (
        18,
        10,
        'Lecture',
        'Scheduled',
        'Introduction to Cartography',
        '2024-11-29 10:00:00',
        '2024-11-29 11:30:00',
        false
    ),
    (
        19,
        NULL,
        '1-to-1',
        'Scheduled',
        'Economic Principles Discussion',
        '2024-11-29 14:00:00',
        '2024-11-29 15:00:00',
        TRUE
    ),
    (
        22,
        11,
        'Lecture',
        'Scheduled',
        'Behavioral Psychology Concepts',
        '2024-12-01 10:00:00',
        '2024-12-01 11:30:00',
        false
    ),
    (
        25,
        NULL,
        '1-to-1',
        'Scheduled',
        'Ethical Theories Exploration',
        '2024-12-02 14:00:00',
        '2024-12-02 15:00:00',
        TRUE
    ),
    (
        27,
        13,
        'Lecture',
        'Scheduled',
        'Sociological Frameworks',
        '2024-12-03 09:00:00',
        '2024-12-03 10:30:00',
        false
    ),
    (
        30,
        14,
        'Lecture',
        'Scheduled',
        'Political Ideologies',
        '2024-12-03 11:00:00',
        '2024-12-03 12:30:00',
        false
    ),
    (
        33,
        15,
        'Lecture',
        'Scheduled',
        'Artistic Expression Techniques',
        '2024-12-04 14:00:00',
        '2024-12-04 15:30:00',
        false
    ),
    (
        35,
        16,
        'Lecture',
        'Scheduled',
        'Music Composition',
        '2024-12-04 16:00:00',
        '2024-12-04 17:30:00',
        false
    ),
    (
        36,
        17,
        'Lecture',
        'Scheduled',
        'Drama and Acting Skills',
        '2024-12-05 09:00:00',
        '2024-12-05 10:30:00',
        false
    ),
    (
        37,
        18,
        'Lecture',
        'Scheduled',
        'Business Leadership',
        '2024-12-05 13:00:00',
        '2024-12-05 14:30:00',
        false
    ),
    (
        39,
        NULL,
        '1-to-1',
        'Scheduled',
        'Case Study: Legal Systems',
        '2024-12-06 11:00:00',
        '2024-12-06 12:00:00',
        TRUE
    ),
    (
        41,
        19,
        'Lecture',
        'Scheduled',
        'Environmental Policy',
        '2024-12-07 10:00:00',
        '2024-12-07 11:30:00',
        false
    ),
    (
        43,
        20,
        'Lecture',
        'Scheduled',
        'Advanced Engineering Concepts',
        '2024-12-07 14:00:00',
        '2024-12-07 15:30:00',
        false
    ),
    (
        3,
        6,
        'Lecture',
        'Scheduled',
        'Advanced Geometry',
        '2024-12-08 09:00:00',
        '2024-12-08 10:30:00',
        false
    ),
    (
        4,
        17,
        'Lecture',
        'Scheduled',
        'Shakespearean Literature',
        '2024-12-08 11:00:00',
        '2024-12-08 12:30:00',
        false
    ),
    (
        8,
        NULL,
        'Practical',
        'Scheduled',
        'Introduction to Algorithms',
        '2024-12-09 14:00:00',
        '2024-12-09 15:30:00',
        TRUE
    ),
    (
        11,
        20,
        'Lecture',
        'Scheduled',
        'Quantum Mechanics',
        '2024-12-10 09:00:00',
        '2024-12-10 10:30:00',
        false
    ),
    (
        14,
        18,
        'Practical',
        'Scheduled',
        'Organic Chemistry Lab',
        '2024-12-10 14:00:00',
        '2024-12-10 15:30:00',
        false
    ),
    (
        18,
        11,
        'Lecture',
        'Scheduled',
        'Geographical Information Systems',
        '2024-12-11 10:00:00',
        '2024-12-11 11:30:00',
        false
    ),
    (
        20,
        NULL,
        '1-to-1',
        'Scheduled',
        'Microeconomic Theories',
        '2024-12-11 14:00:00',
        '2024-12-11 15:00:00',
        TRUE
    ),
    (
        24,
        1,
        'Lecture',
        'Scheduled',
        'Psychological Research Methods',
        '2024-12-12 09:00:00',
        '2024-12-12 10:30:00',
        false
    ),
    (
        26,
        5,
        'Lecture',
        'Scheduled',
        'Cultural Sociology',
        '2024-12-12 11:00:00',
        '2024-12-12 12:30:00',
        false
    ),
    (
        28,
        8,
        'Lecture',
        'Scheduled',
        'Social Movements and Change',
        '2024-12-12 14:00:00',
        '2024-12-12 15:30:00',
        false
    ),
    (
        31,
        1,
        'Lecture',
        'Scheduled',
        'Comparative Politics',
        '2024-12-13 10:00:00',
        '2024-12-13 11:30:00',
        false
    ),
    (
        34,
        NULL,
        'Lecture',
        'Scheduled',
        'Art History Overview',
        '2024-12-13 14:00:00',
        '2024-12-13 15:30:00',
        TRUE
    ),
    (
        38,
        NULL,
        '1-to-1',
        'Scheduled',
        'Criminal Law Case Study',
        '2024-12-14 09:00:00',
        '2024-12-14 10:00:00',
        TRUE
    ),
    (
        40,
        13,
        'Lecture',
        'Scheduled',
        'Constitutional Law Basics',
        '2024-12-14 11:00:00',
        '2024-12-14 12:30:00',
        false
    ),
    (
        41,
        17,
        'Lecture',
        'Scheduled',
        'Climate Change Impacts',
        '2024-12-15 09:00:00',
        '2024-12-15 10:30:00',
        false
    ),
    (
        42,
        10,
        'Lecture',
        'Scheduled',
        'Introduction to Renewable Energy',
        '2024-12-15 11:00:00',
        '2024-12-15 12:30:00',
        false
    ),
    (
        43,
        6,
        'Lecture',
        'Scheduled',
        'Robotics and AI',
        '2024-12-16 09:00:00',
        '2024-12-16 10:30:00',
        false
    ),
    (
        9,
        NULL,
        'Practical',
        'Scheduled',
        'Database Design Workshop',
        '2024-12-16 11:00:00',
        '2024-12-16 12:30:00',
        TRUE
    ),
    (
        12,
        15,
        'Lecture',
        'Scheduled',
        'Astrophysics Fundamentals',
        '2024-12-17 09:00:00',
        '2024-12-17 10:30:00',
        false
    ),
    (
        29,
        10,
        'Lecture',
        'Scheduled',
        'Political Theory Classics',
        '2024-12-17 11:00:00',
        '2024-12-17 12:30:00',
        false
    );


INSERT INTO emergency_contact(
        student_id,
        student_emergency_contact_first_name,
        student_emergency_contact_last_name,
        student_emergency_contact_relationship,
        student_emergency_phone_country_code,
        student_emergency_contact_number,
        student_emergency_contact_alt_number,
        student_emergency_contact_email,
        student_emergency_other_details,
        emergency_shares_student_address
    )
VALUES (
        1,
        'Elfie',
        'Loalday',
        'Auntie',
        '+44',
        '436-675-1224',
        NULL,
        'eloalday0@dmoz.org',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        false
    ),
    (
        2,
        'Mendel',
        'Betke',
        'Mother',
        '+1',
        '415-328-5717',
        NULL,
        'mbetke1@spotify.com',
        'Cras consequat diam suscipit eleifend laoreet.',
        TRUE
    ),
    (
        3,
        'Filippo',
        'Scaysbrook',
        'Father',
        '+484',
        '422-814-1032',
        NULL,
        'fscaysbrook2@aboutads.info',
        'Nulla vel faucibus enim, in malesuada velit',
        TRUE
    ),
    (
        4,
        'Arlette',
        'Linzee',
        'Auntie',
        '+498',
        '575-504-4089',
        NULL,
        'alinzee3@gnu.org',
        'Fusce eget tellus eu urna tempus rutrum eu ut magna. ',
        false
    ),
    (
        5,
        'Karalee',
        'Peschmann',
        'Mother',
        '+160',
        '240-512-8612',
        NULL,
        'kpeschmann4@domainmarket.com',
        'Nullam nec elit neque. Vivamus at velit est.',
        TRUE
    ),
    (
        6,
        'Merci',
        'Vassie',
        'Grandma',
        '+404',
        '840-199-9734',
        NULL,
        'mvassie5@flavors.me',
        'Suspendisse potenti. Nulla commodo facilisis condimentum. Fusce mauris felis, volutpat at metus et, interdum tincidunt risus. Fusce non rhoncus libero.',
        TRUE
    ),
    (
        7,
        'Friedrick',
        'Daville',
        'Uncle',
        '+238',
        '996-198-5614',
        NULL,
        'fdaville6@printfriendly.com',
        'Nulla at elit ac libero vehicula faucibus non id est',
        false
    ),
    (
        8,
        'Edan',
        'Riordan',
        'Uncle',
        '+598',
        '386-940-6060',
        NULL,
        'eoriordan7@shop-pro.jp',
        'Ut sed massa leo.',
        false
    ),
    (
        9,
        'Rodd',
        'Sizey',
        'Brother',
        '+255',
        '322-742-7069',
        NULL,
        'rsizey8@fc2.com',
        'In quis malesuada ligula, eu rutrum elit. ',
        false
    ),
    (
        10,
        'Bart',
        'Zanicchelli',
        'Brother',
        '+499',
        '239-106-4592',
        NULL,
        'bzanicchelli9@sitemeter.com',
        'Aenean eu erat leo.',
        false
    ),
    (
        11,
        'Alf',
        'Farrah',
        'Father',
        '+876',
        '331-189-2747',
        NULL,
        'afarraha@ed.gov',
        'Curabitur viverra vulputate semper.',
        false
    ),
    (
        12,
        'Dreddy',
        'Germon',
        'Carer',
        '+655',
        '623-146-8571',
        NULL,
        'dgermonb@europa.eu',
        'Proin varius condimentum augue sed dignissim. ',
        false
    ),
    (
        13,
        'Lita',
        'Renfree',
        'Mother',
        '+683',
        '802-477-7959',
        NULL,
        'lrenfreec@behance.net',
        'Quisque eros lorem, porttitor et lorem mollis, convallis volutpat orci.',
        TRUE
    ),
    (
        14,
        'Gawen',
        'DeMicoli',
        'Father',
        '+123',
        '794-965-0291',
        NULL,
        'gdemicolid@spiegel.de',
        'Donec eget lectus ornare, ornare nisl et, dapibus lectus.',
        TRUE
    ),
    (
        15,
        'Darnall',
        'Lyddyard',
        'Father',
        '+871',
        '505-230-8115',
        NULL,
        'dlyddyarde@ycombinator.com',
        'Proin vitae ipsum sed ante feugiat pellentesque vitae sed mauris.',
        TRUE
    ),
    (
        16,
        'Logan',
        'Mapletoft',
        'Father',
        '+251',
        '185-511-7290',
        NULL,
        'lmapletoftf@dropbox.com',
        'Nulla eu ex vestibulum, gravida sem non, gravida diam. ',
        false
    ),
    (
        17,
        'Ruggiero',
        'Sheepy',
        'Father',
        '+491',
        '227-828-9121',
        NULL,
        'rsheepyg@time.com',
        'Pellentesque eget rhoncus libero.',
        false
    ),
    (
        18,
        'Monica',
        'Bryan',
        'Mother',
        '+753',
        '622-270-2855',
        NULL,
        'mbryanh@whitehouse.gov',
        'Cras feugiat nisl mauris. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        false
    ),
    (
        19,
        'Chrisse',
        'MacCall',
        'Auntie',
        '+900',
        '637-783-1613',
        NULL,
        'cmaccalli@vistaprint.com',
        'Praesent vestibulum, lectus in auctor consectetur, arcu velit auctor risus, eu tempor ipsum lectus quis nibh.',
        false
    ),
    (
        20,
        'Saloma',
        'Pierucci',
        'Sister',
        '+857',
        '915-890-0327',
        NULL,
        'spieruccij@linkedin.com',
        'Cras finibus aliquam mi, vestibulum dapibus sapien tincidunt ac.',
        false
    ),
    (
        21,
        'Averil',
        'Longmore',
        'Brothe',
        '+619',
        '131-803-6062',
        NULL,
        'alongmorek@zimbio.com',
        'Phasellus risus nisi, euismod sed condimentum nec, tincidunt at risus.',
        TRUE
    ),
    (
        22,
        'Emmet',
        'Farrent',
        'Mother',
        '+493',
        '861-119-4978',
        NULL,
        'efarrentl@csmonitor.com',
        'Cras ullamcorper lacinia mauris vel tincidunt. Aliquam molestie quam in nisl accumsan, a pellentesque ipsum vulputate.',
        TRUE
    ),
    (
        23,
        'Stephana',
        'Turk',
        'Mother',
        '+182',
        '321-375-0936',
        NULL,
        'sturkm@upenn.edu',
        'Suspendisse lacinia bibendum mi, sit amet sodales velit auctor vel. Nulla metus purus, aliquet nec urna at, posuere efficitur nibh.',
        false
    ),
    (
        24,
        'Geoff',
        'Stamps',
        'Father',
        '+581',
        '353-365-7774',
        NULL,
        'gstampsn@amazon.com',
        'Pellentesque lacinia nibh et varius ullamcorper.',
        false
    ),
    (
        25,
        'Dan',
        'Smewing',
        'Father',
        '+357',
        '377-883-5350',
        NULL,
        'dsmewingo@spotify.com',
        'Suspendisse porttitor at sapien et egestas.',
        TRUE
    ),
    (
        26,
        'Trevor',
        'Gladdis',
        'Father',
        '+283',
        '992-534-5871',
        NULL,
        'tgladdisp@msu.edu',
        'Sed elementum bibendum ipsum.',
        false
    ),
    (
        27,
        'Rodolphe',
        'Bagnell',
        'Father',
        '+984',
        '602-935-9897',
        NULL,
        'rbagnellq@intel.com',
        'Proin lacus arcu, mattis sit amet dignissim vestibulum, posuere et elit. ',
        false
    ),
    (
        28,
        'Claudian',
        'Avrahamov',
        'Mother',
        '+424',
        '774-202-4186',
        NULL,
        'cavrahamovr@cbslocal.com',
        'Mauris nisi mi, dignissim in porttitor sit amet, iaculis volutpat nibh. Fusce aliquam, ligula id faucibus varius, mauris nisl convallis purus, non porttitor eros tellus vitae est.',
        false
    ),
    (
        29,
        'Donelle',
        'Barwise',
        'Father',
        '+646',
        '127-403-4756',
        NULL,
        'dbarwises@vk.com',
        'Pellentesque ut lobortis libero.',
        TRUE
    ),
    (
        30,
        'Salvidor',
        'Spridgen',
        'Father',
        '+227',
        '342-813-3543',
        NULL,
        'sspridgent@redcross.org',
        'Donec ex ligula, hendrerit ac odio vel, condimentum fermentum dui.',
        false
    ),
    (
        31,
        'Haley',
        'Huertas',
        'Sister',
        '+231',
        '140-588-6102',
        NULL,
        'hhuertasu@spotify.com',
        'Praesent in orci augue.',
        TRUE
    );


INSERT INTO enrolment (
        course_id,
        student_id,
        enrolment_status,
        enrolment_start_date,
        enrolment_end_date,
        final_grade_percentage
    )
VALUES (1, 5, 'in', '2022-12-22', '2023-12-29', NULL),
    (
        1,
        11,
        'pharetra',
        '2021-12-22',
        '2026-10-30',
        NULL
    ),
    (
        1,
        15,
        'mi pede',
        '2021-08-14',
        '2024-11-26',
        44.77
    ),
    (
        2,
        5,
        'convallis',
        '2023-04-11',
        '2025-03-10',
        NULL
    ),
    (2, 18, 'dolor', '2021-02-15', '2028-09-18', NULL),
    (3, 3, 'morbi', '2020-03-14', '2028-12-28', 48.15),
    (
        3,
        30,
        'pede justo',
        '2022-01-24',
        '2025-04-11',
        NULL
    ),
    (4, 16, 'felis', '2022-03-19', '2026-01-14', NULL),
    (4, 32, 'morbi', '2020-06-19', '2024-03-14', NULL),
    (
        4,
        29,
        'nec sem',
        '2022-03-25',
        '2024-10-11',
        21.76
    ),
    (4, 4, 'nam', '2024-02-21', '2028-03-13', NULL),
    (
        5,
        16,
        'turpis',
        '2024-08-27',
        '2027-01-18',
        NULL
    ),
    (
        5,
        2,
        'at nulla',
        '2021-05-01',
        '2027-09-22',
        NULL
    ),
    (
        5,
        20,
        'sollicitudin',
        '2021-04-25',
        '2026-09-01',
        NULL
    ),
    (
        6,
        27,
        'felis fusce',
        '2020-09-05',
        '2028-09-19',
        NULL
    ),
    (6, 12, 'etiam', '2024-01-27', '2027-01-06', NULL),
    (
        7,
        13,
        'volutpat',
        '2021-01-01',
        '2027-06-18',
        27.84
    ),
    (7, 19, 'enim', '2022-01-20', '2025-06-03', 2.4),
    (
        8,
        28,
        'porttitor',
        '2024-06-05',
        '2026-08-11',
        NULL
    ),
    (10, 10, 'a', '2020-08-03', '2027-03-19', NULL),
    (
        11,
        25,
        'mauris',
        '2023-04-20',
        '2025-01-04',
        NULL
    ),
    (
        11,
        20,
        'orci',
        '2020-12-09',
        '2028-12-13',
        63.26
    ),
    (11, 22, 'nam', '2020-07-30', '2026-03-25', NULL),
    (
        12,
        10,
        'hac habitasse',
        '2024-08-03',
        '2028-02-09',
        NULL
    ),
    (
        12,
        27,
        'lacinia',
        '2020-10-05',
        '2025-02-25',
        96.55
    ),
    (
        12,
        8,
        'ut blandit',
        '2020-09-09',
        '2027-02-10',
        NULL
    ),
    (13, 18, 'duis', '2022-08-20', '2024-11-01', NULL),
    (13, 23, 'eu', '2020-03-28', '2024-12-07', NULL),
    (
        14,
        32,
        'porttitor',
        '2022-05-30',
        '2025-12-08',
        NULL
    ),
    (14, 27, 'pede', '2022-01-28', '2028-08-11', NULL),
    (
        15,
        30,
        'id nulla',
        '2024-11-10',
        '2025-03-25',
        NULL
    ),
    (
        15,
        20,
        'convallis',
        '2023-03-24',
        '2026-12-30',
        NULL
    ),
    (
        16,
        1,
        'rhoncus',
        '2022-06-10',
        '2028-11-28',
        NULL
    ),
    (
        16,
        31,
        'velit',
        '2021-10-11',
        '2026-10-24',
        56.6
    ),
    (
        17,
        27,
        'nunc donec',
        '2021-03-29',
        '2025-09-23',
        NULL
    ),
    (17, 18, 'cras', '2021-10-24', '2028-12-13', NULL),
    (
        17,
        6,
        'ligula',
        '2023-01-16',
        '2026-09-03',
        NULL
    );


INSERT INTO staff (
        dept_id,
        branch_id,
        is_branch_manager,
        staff_email,
        staff_mobile_code,
        staff_mobile_number,
        staff_first_name,
        staff_middle_name,
        staff_last_name,
        staff_title,
        staff_addr1,
        staff_addr2,
        staff_city,
        staff_postcode,
        staff_country_code
    )
VALUES (
        9,
        2,
        false,
        'sivermee0@ses.edu',
        '+591',
        '17240415489',
        'Antonius',
        NULL,
        'Ivermee',
        'Mrs',
        '8 Stuart Avenue',
        NULL,
        'Qobu',
        NULL,
        'AZ'
    ),
    (
        13,
        3,
        TRUE,
        'ndurant1@ses.edu',
        '+586',
        '62406496215',
        'Dollie',
        NULL,
        'Durant',
        'Mrs',
        '8 Veith Street',
        NULL,
        'Jabungsisir',
        NULL,
        'ID'
    ),
    (
        7,
        10,
        false,
        'wmorfey2@ses.edu',
        '+943',
        '55195984704',
        'Clarissa',
        NULL,
        'Morfey',
        'Mr',
        '9 Manufacturers Street',
        NULL,
        'Villanova',
        '29010',
        'IT'
    ),
    (
        1,
        7,
        false,
        'cfriberg3@ses.edu',
        '+1',
        '15829069274',
        'Nigel',
        NULL,
        'Friberg',
        'Mr',
        '71 Russell Parkway',
        NULL,
        'Grybów',
        '33-330',
        'PL'
    ),
    (
        17,
        6,
        false,
        'mbennedsen4@ses.edu',
        '+106',
        '70117481244',
        'Camel',
        NULL,
        'Bennedsen',
        'Ms',
        '6 Rutledge Park',
        NULL,
        'Qiaozi',
        NULL,
        'CN'
    ),
    (
        4,
        2,
        false,
        'bamberson5@ses.edu',
        '+561',
        '34527050398',
        'Bryce',
        NULL,
        'Amberson',
        'Dr',
        '96124 Mccormick Hill',
        NULL,
        'São Roque',
        '9500-701',
        'PT'
    ),
    (
        6,
        2,
        false,
        'mmoxsom6@ses.edu',
        '+422',
        '81298751964',
        'Devinne',
        NULL,
        'Moxsom',
        'Mr',
        '4294 Prentice Junction',
        NULL,
        'Zhukovskiy',
        '142143',
        'RU'
    ),
    (
        8,
        4,
        TRUE,
        'kconnah7@ses.edu',
        '+259',
        '30037801243',
        'Chelsie',
        NULL,
        'Connah',
        'Mr',
        '223 1st Trail',
        'PO Box 71912',
        'Jianfeng',
        NULL,
        'CN'
    ),
    (
        12,
        7,
        false,
        'sockwell8@ses.edu',
        '+941',
        '64511858778',
        'Tommi',
        NULL,
        'Ockwell',
        'Dr',
        '0 Donald Terrace',
        NULL,
        'Feicheng',
        NULL,
        'CN'
    ),
    (
        8,
        5,
        false,
        'ccess9@ses.edu',
        '+695',
        '54988562478',
        'Penni',
        NULL,
        'Cess',
        'Mr',
        '481 Little Fleur Street',
        NULL,
        'Leeuwarden',
        '8934',
        'NL'
    ),
    (
        15,
        7,
        false,
        'bkilroya@ses.edu',
        '+830',
        '11303924694',
        'Moyra',
        NULL,
        'Kilroy',
        'Ms',
        '527 Debs Plaza',
        NULL,
        'Mir',
        NULL,
        'BY'
    ),
    (
        17,
        8,
        false,
        'tgrizardb@ses.edu',
        '+248',
        '33204852108',
        'Fairlie',
        NULL,
        'Grizard',
        'Mr',
        '267 Mccormick Hill',
        NULL,
        'Santiago del Estero',
        '4200',
        'AR'
    ),
    (
        6,
        9,
        false,
        'sbenzc@ses.edu',
        '+317',
        '52148502637',
        'Justinn',
        NULL,
        'Benz',
        'Mrs',
        '219 4th Road',
        NULL,
        'Stryszawa',
        '34-205',
        'PL'
    ),
    (
        16,
        7,
        false,
        'gcallerd@ses.edu',
        '+695',
        '85304813459',
        'Nell',
        NULL,
        'Caller',
        'Mr',
        '3 Warrior Junction',
        'Room 1816',
        'Saky',
        NULL,
        'UA'
    ),
    (
        7,
        10,
        TRUE,
        'jstanistretee@ses.edu',
        '+598',
        '32130985936',
        'Genevra',
        NULL,
        'Stanistrete',
        'Ms',
        '06 Mandrake Circle',
        NULL,
        'Corani',
        NULL,
        'PE'
    ),
    (
        4,
        6,
        false,
        'swallengerf@ses.edu',
        '+365',
        '54931967143',
        'Verna',
        'Silvano',
        'Wallenger',
        'Mr',
        '01277 Nelson Street',
        NULL,
        'Złotów',
        '77-400',
        'PL'
    ),
    (
        1,
        6,
        false,
        'cruttg@ses.edu',
        '+756',
        '73811050894',
        'Wye',
        NULL,
        'Rutt',
        'Mr',
        '7458 Forest Court',
        NULL,
        'Huayuan',
        NULL,
        'CN'
    ),
    (
        14,
        2,
        false,
        'yfoxhallh@ses.edu',
        '+928',
        '47056543996',
        'Cherin',
        NULL,
        'Foxhall',
        'Dr',
        '16972 4th Pass',
        NULL,
        'Sionogan',
        '1104',
        'PH'
    ),
    (
        17,
        9,
        false,
        'cchritchleyi@ses.edu',
        '+323',
        '21520481772',
        'Sela',
        NULL,
        'Chritchley',
        'Ms',
        '4197 Waubesa Plaza',
        NULL,
        'Gulonggang',
        NULL,
        'CN'
    ),
    (
        15,
        7,
        false,
        'mabbottj@ses.edu',
        '+355',
        '94394085034',
        'Tina',
        NULL,
        'Abbott',
        'Mr',
        '82229 Miller Trail',
        NULL,
        'Awilega',
        NULL,
        'ID'
    ),
    (
        12,
        9,
        false,
        'ffernezk@ses.edu',
        '+619',
        '24520949174',
        'Jim',
        NULL,
        'Fernez',
        'Mrs',
        '867 Lighthouse Bay Trail',
        NULL,
        'Imsil',
        NULL,
        'KR'
    ),
    (
        6,
        1,
        false,
        'smcbrydel@ses.edu',
        '+201',
        '76417514116',
        'Zaneta',
        NULL,
        'McBryde',
        'Mr',
        '460 Surrey Point',
        NULL,
        'Obo',
        NULL,
        'CN'
    ),
    (
        6,
        9,
        TRUE,
        'jpenhearowm@ses.edu',
        '+832',
        '80673895713',
        'Mendel',
        NULL,
        'Penhearow',
        'Ms',
        '2 Rigney Court',
        NULL,
        'Oslo',
        '1257',
        'NO'
    ),
    (
        14,
        10,
        false,
        'schretienn@ses.edu',
        '+854',
        '83938438616',
        'Shermy',
        NULL,
        'Chretien',
        'Dr',
        '5892 Stuart Terrace',
        'Apt 646',
        'Xujiaqiao',
        NULL,
        'CN'
    ),
    (
        3,
        1,
        TRUE,
        'jlambdino@ses.edu',
        '+455',
        '38596334261',
        'Dara',
        NULL,
        'Lambdin',
        'Dr',
        '88192 Redwing Terrace',
        NULL,
        'Paris 19',
        '75949 CEDEX 19',
        'FR'
    ),
    (
        1,
        10,
        false,
        'agiovannazzip@ses.edu',
        '+644',
        '64727807873',
        'Adelheid',
        NULL,
        'Giovannazzi',
        'Dr',
        '557 Rigney Avenue',
        NULL,
        'Richmond',
        '23237',
        'US'
    ),
    (
        2,
        5,
        false,
        'vrickasseq@ses.edu',
        '+219',
        '41819672424',
        'Kellsie',
        NULL,
        'Rickasse',
        'Ms',
        '78 North Terrace',
        NULL,
        'Cataguases',
        '36770-000',
        'BR'
    ),
    (
        7,
        4,
        false,
        'tstruter@ses.edu',
        '+905',
        '91932667111',
        'Hal',
        NULL,
        'Strute',
        'Mrs',
        '79 Fordem Lane',
        NULL,
        'Mberubu',
        NULL,
        'NG'
    ),
    (
        5,
        6,
        false,
        'amacranalds@ses.edu',
        '+806',
        '67703106218',
        'Irena',
        NULL,
        'MacRanald',
        'Dr',
        '5 Pankratz Parkway',
        NULL,
        'Pontevedra',
        '36164',
        'ES'
    ),
    (
        4,
        5,
        false,
        'ggaenort@ses.edu',
        '+290',
        '83277026695',
        'Jasmina',
        'Garwood',
        'Gaenor',
        'Ms',
        '692 Sugar Alley',
        NULL,
        'Dicamay',
        '6011',
        'PH'
    ),
    (
        18,
        5,
        false,
        'cnanuccioiu@ses.edu',
        '+46',
        '72282329032',
        'Sunny',
        'Calida',
        'Nanuccioi',
        'Ms',
        '88 Rutledge Hill',
        NULL,
        'Górzno',
        '87-320',
        'PL'
    ),
    (
        3,
        7,
        false,
        'dwillshirev@ses.edu',
        '+573',
        '70823332073',
        'Kalie',
        NULL,
        'Willshire',
        'Dr',
        '5 Spaight Parkway',
        NULL,
        'Concepcion',
        '7213',
        'PH'
    ),
    (
        6,
        3,
        false,
        'kbamblettw@ses.edu',
        '+32',
        '70751337853',
        'Hi',
        NULL,
        'Bamblett',
        'Mrs',
        '2254 Mitchell Junction',
        NULL,
        'Cepões',
        '3505-157',
        'PT'
    ),
    (
        2,
        8,
        false,
        'tnevisonx@ses.edu',
        '+448',
        '88532639034',
        'Chester',
        NULL,
        'Nevison',
        'Mrs',
        '845 Arizona Park',
        NULL,
        'Kavallári',
        NULL,
        'GR'
    ),
    (
        16,
        10,
        false,
        'dpawlingy@ses.edu',
        '+794',
        '62093471048',
        'Rozanna',
        NULL,
        'Pawling',
        'Ms',
        '65256 Monica Junction',
        NULL,
        'Gedian',
        NULL,
        'CN'
    ),
    (
        4,
        7,
        TRUE,
        'achewterz@ses.edu',
        '+569',
        '93066170571',
        'Bridgette',
        NULL,
        'Chewter',
        'Mr',
        '310 Forest Plaza',
        NULL,
        'Namioka',
        '953-0062',
        'JP'
    ),
    (
        8,
        9,
        false,
        'mshervington10@ses.edu',
        '+36',
        '64300957002',
        'Wallis',
        NULL,
        'Shervington',
        'Ms',
        '19219 Fordem Avenue',
        NULL,
        'Astorga',
        '86730-000',
        'BR'
    ),
    (
        8,
        2,
        false,
        'shiscoe11@ses.edu',
        '+138',
        '29624404947',
        'Sylas',
        'Shelley',
        'Hiscoe',
        'Dr',
        '1 3rd Way',
        NULL,
        'Żarów',
        '58-130',
        'PL'
    ),
    (
        10,
        6,
        false,
        'kletchmore12@ses.edu',
        '+277',
        '13645009866',
        'Jessi',
        NULL,
        'Letchmore',
        'Ms',
        '57061 Eggendart Terrace',
        NULL,
        'San Miguelito',
        NULL,
        'PA'
    ),
    (
        5,
        8,
        TRUE,
        'cstubley13@ses.edu',
        '+563',
        '31594567455',
        'Sylvia',
        NULL,
        'Stubley',
        'Mr',
        '998 Melrose Court',
        NULL,
        'Ozerne',
        NULL,
        'UA'
    ),
    (
        11,
        5,
        false,
        'dcarlozzi14@ses.edu',
        '+11',
        '84289929252',
        'Damita',
        NULL,
        'Carlozzi',
        'Mr',
        '4 Forest Parkway',
        NULL,
        'Hamamatsu',
        '435-0055',
        'JP'
    ),
    (
        1,
        6,
        false,
        'iskamal15@ses.edu',
        '+869',
        '76618029899',
        'Marj',
        NULL,
        'Skamal',
        'Dr',
        '346 Dapin Trail',
        NULL,
        'Riangderi',
        NULL,
        'ID'
    ),
    (
        1,
        5,
        false,
        'vgethouse16@ses.edu',
        '+942',
        '38442686983',
        'Carr',
        NULL,
        'Gethouse',
        'Mr',
        '97201 Jenifer Avenue',
        NULL,
        'Zhushan',
        NULL,
        'CN'
    ),
    (
        13,
        6,
        TRUE,
        'ltoolan17@ses.edu',
        '+219',
        '34268105898',
        'Farra',
        NULL,
        'Toolan',
        'Ms',
        '592 Goodland Junction',
        NULL,
        'Antrukan',
        NULL,
        'ID'
    ),
    (
        4,
        5,
        TRUE,
        'ckeough18@ses.edu',
        '+289',
        '27009100874',
        'Julianna',
        NULL,
        'Keough',
        'Ms',
        '2221 Sullivan Place',
        NULL,
        'Catarina',
        NULL,
        'NI'
    ),
    (
        10,
        10,
        false,
        'dgarrett19@ses.edu',
        '+976',
        '40115405813',
        'Clemmy',
        NULL,
        'Garrett',
        'Mrs',
        '27370 John Wall Drive',
        'Apt 50',
        'Ozalj',
        '47280',
        'HR'
    ),
    (
        18,
        6,
        false,
        'ggillise1a@ses.edu',
        '+332',
        '42709143035',
        'Roscoe',
        'Griff',
        'Gillise',
        'Dr',
        '9635 Morning Crossing',
        NULL,
        'Szydłowo',
        '64-930',
        'PL'
    ),
    (
        7,
        2,
        TRUE,
        'jbento1b@ses.edu',
        '+250',
        '74037910933',
        'Wilt',
        NULL,
        'Bento',
        'Ms',
        '8120 Shasta Street',
        NULL,
        'Tsurusaki',
        '870-0106',
        'JP'
    ),
    (
        4,
        9,
        false,
        'jcharnley1c@ses.edu',
        '+760',
        '44161270809',
        'Chadd',
        NULL,
        'Charnley',
        'Mr',
        '1 Londonderry Pass',
        NULL,
        '‘Awartā',
        NULL,
        'PS'
    ),
    (
        6,
        9,
        false,
        'cgittus1d@ses.edu',
        '+694',
        '17859014286',
        'Fenelia',
        NULL,
        'Gittus',
        'Dr',
        '3 Clarendon Junction',
        NULL,
        'Gangnan',
        NULL,
        'CN'
    );


INSERT INTO course_staff (course_id, staff_id)
VALUES (1, 5),
    (1, 10),
    (2, 12),
    (2, 15),
    (3, 8),
    (3, 20),
    (4, 25),
    (4, 30),
    (5, 35),
    (5, 40),
    (6, 18),
    (6, 22),
    (7, 11),
    (7, 7),
    (8, 14),
    (8, 28),
    (9, 19),
    (9, 2),
    (10, 32),
    (10, 26),
    (11, 13),
    (11, 33),
    (12, 3),
    (12, 21),
    (13, 16),
    (13, 38),
    (14, 4),
    (14, 27),
    (15, 9),
    (15, 37),
    (16, 1),
    (16, 6),
    (17, 17),
    (17, 23),
    (18, 24),
    (18, 31),
    (19, 34),
    (19, 36),
    (20, 39),
    (20, 43),
    (21, 45),
    (21, 48),
    (22, 50),
    (22, 2),
    (23, 8),
    (23, 18),
    (24, 25),
    (24, 33),
    (25, 41),
    (25, 12);


INSERT INTO staff_role(staff_id, role_id)
VALUES (1, 4),
    (1, 7),
    (1, 8),
    (1, 10),
    (1, 12),
    (1, 13),
    (1, 14),
    (1, 17),
    (1, 19),
    (2, 2),
    (2, 3),
    (2, 4),
    (2, 8),
    (2, 9),
    (2, 10),
    (2, 12),
    (2, 13),
    (2, 14),
    (2, 15),
    (2, 16),
    (2, 17),
    (2, 19),
    (3, 4),
    (3, 5),
    (3, 6),
    (3, 10),
    (3, 14),
    (3, 16),
    (3, 19),
    (4, 4),
    (4, 5),
    (4, 6),
    (4, 7),
    (4, 9),
    (4, 12),
    (4, 14),
    (4, 16),
    (4, 17),
    (5, 2),
    (5, 3),
    (5, 6),
    (5, 7),
    (5, 9),
    (5, 13),
    (5, 14),
    (6, 3),
    (6, 5),
    (6, 6),
    (6, 9),
    (6, 11),
    (6, 12),
    (6, 13),
    (6, 18),
    (7, 3),
    (7, 10),
    (7, 13),
    (7, 15),
    (7, 17),
    (8, 7),
    (8, 9),
    (8, 12),
    (8, 20),
    (9, 4),
    (9, 8),
    (9, 9),
    (9, 10),
    (9, 14),
    (9, 17),
    (9, 19),
    (9, 20),
    (10, 1),
    (10, 3),
    (10, 4),
    (10, 5),
    (10, 6),
    (10, 7),
    (10, 9),
    (11, 1),
    (11, 2),
    (11, 3),
    (11, 5),
    (11, 6),
    (12, 1),
    (12, 6),
    (12, 9),
    (13, 1),
    (13, 2),
    (13, 3),
    (13, 5),
    (13, 6),
    (13, 8),
    (13, 9),
    (14, 1),
    (14, 2),
    (14, 7),
    (14, 9),
    (15, 1),
    (15, 2),
    (15, 3),
    (15, 5),
    (16, 1),
    (16, 2),
    (16, 6),
    (16, 8),
    (17, 1),
    (17, 2),
    (17, 3),
    (17, 5),
    (17, 6),
    (18, 1),
    (18, 2),
    (18, 4),
    (18, 9),
    (19, 1),
    (19, 5),
    (19, 8),
    (20, 1),
    (20, 2),
    (20, 3),
    (20, 4),
    (20, 6),
    (20, 9),
    (21, 1),
    (21, 4),
    (22, 1),
    (22, 2),
    (22, 3),
    (22, 7),
    (22, 9),
    (23, 1),
    (23, 4),
    (23, 6),
    (23, 9),
    (24, 1),
    (24, 2),
    (25, 1),
    (25, 5),
    (25, 6),
    (25, 8),
    (26, 1),
    (26, 2),
    (26, 8),
    (27, 1),
    (27, 2),
    (27, 6),
    (27, 8),
    (28, 1),
    (28, 2),
    (28, 4),
    (28, 5),
    (28, 8),
    (28, 9),
    (29, 1),
    (29, 2),
    (29, 4),
    (29, 8),
    (30, 1),
    (30, 2),
    (30, 3),
    (30, 7),
    (30, 8),
    (31, 1),
    (31, 4),
    (31, 5),
    (31, 7),
    (31, 8),
    (31, 9),
    (32, 1),
    (32, 2),
    (32, 4),
    (32, 7),
    (32, 9),
    (33, 1),
    (33, 4),
    (33, 5),
    (33, 7),
    (33, 9),
    (34, 1),
    (34, 5),
    (34, 8),
    (34, 9),
    (35, 1),
    (35, 4),
    (35, 7),
    (35, 9),
    (36, 1),
    (36, 2),
    (36, 5),
    (36, 8),
    (36, 9),
    (37, 1),
    (37, 2),
    (37, 4),
    (37, 7),
    (38, 1),
    (38, 2),
    (38, 3),
    (38, 7),
    (38, 9),
    (39, 1),
    (39, 2),
    (39, 3),
    (39, 4),
    (39, 5),
    (39, 7),
    (40, 1),
    (40, 4),
    (40, 7),
    (40, 8),
    (40, 9),
    (41, 1),
    (41, 3),
    (41, 9),
    (42, 1),
    (42, 3),
    (42, 5),
    (43, 1),
    (43, 2),
    (43, 4),
    (43, 6),
    (44, 1),
    (44, 2),
    (44, 5),
    (44, 6),
    (44, 9),
    (45, 1),
    (45, 2),
    (45, 4),
    (45, 5),
    (45, 6),
    (45, 7),
    (45, 8),
    (46, 1),
    (46, 2),
    (46, 3),
    (46, 5),
    (46, 6),
    (46, 8),
    (46, 9),
    (47, 1),
    (47, 2),
    (47, 4),
    (47, 5),
    (47, 7),
    (47, 9),
    (48, 1),
    (48, 2),
    (48, 3),
    (48, 4),
    (48, 5),
    (48, 8),
    (49, 1),
    (49, 2),
    (49, 5),
    (49, 6),
    (49, 8),
    (49, 9),
    (50, 1),
    (50, 7);


INSERT INTO staff_absence (
        staff_id,
        absence_start,
        absence_end,
        absence_type
    )
VALUES (
        1,
        '2024-01-10 09:00:00',
        '2024-01-12 17:00:00',
        'Holiday'
    ),
    (
        2,
        '2024-02-15 08:30:00',
        '2024-02-15 12:30:00',
        'Personal'
    ),
    (
        3,
        '2024-03-05 09:00:00',
        '2024-03-08 17:00:00',
        'Sickness'
    ),
    (
        4,
        '2024-04-20 09:00:00',
        '2024-04-22 17:00:00',
        'Holiday'
    ),
    (
        5,
        '2024-05-10 10:00:00',
        '2024-05-10 15:00:00',
        'Personal'
    ),
    (
        6,
        '2024-06-25 09:00:00',
        '2024-06-26 17:00:00',
        'Sickness'
    ),
    (
        7,
        '2024-07-05 08:00:00',
        '2024-07-05 13:00:00',
        'Holiday'
    ),
    (
        8,
        '2024-08-15 09:00:00',
        '2024-08-18 17:00:00',
        'Personal'
    ),
    (
        9,
        '2024-09-05 09:00:00',
        '2024-09-07 17:00:00',
        'Sickness'
    ),
    (
        10,
        '2024-10-10 09:00:00',
        '2024-10-12 17:00:00',
        'Holiday'
    ),
    (
        11,
        '2024-11-20 08:00:00',
        '2024-11-20 16:00:00',
        'Personal'
    ),
    (
        12,
        '2024-12-01 09:00:00',
        '2024-12-03 17:00:00',
        'Sickness'
    ),
    (
        13,
        '2024-01-15 09:00:00',
        '2024-01-17 17:00:00',
        'Holiday'
    ),
    (
        14,
        '2024-02-28 09:00:00',
        '2024-02-28 14:00:00',
        'Personal'
    ),
    (
        15,
        '2024-03-10 09:00:00',
        '2024-03-12 17:00:00',
        'Sickness'
    ),
    (
        16,
        '2024-04-05 09:00:00',
        '2024-04-06 17:00:00',
        'Holiday'
    ),
    (
        17,
        '2024-05-20 08:30:00',
        '2024-05-20 13:30:00',
        'Personal'
    ),
    (
        18,
        '2024-06-15 09:00:00',
        '2024-06-17 17:00:00',
        'Sickness'
    ),
    (
        1,
        '2024-03-05 09:00:00',
        '2024-03-07 17:00:00',
        'Sickness'
    ),
    (
        2,
        '2024-04-01 09:00:00',
        '2024-04-02 17:00:00',
        'Holiday'
    );


INSERT INTO staff_availability (staff_id, day_of_week)
VALUES (1, 1),
    (1, 2),
    (1, 3),
    (2, 2),
    (2, 4),
    (2, 6),
    (3, 3),
    (3, 5),
    (3, 7),
    (4, 1),
    (4, 2),
    (4, 4),
    (5, 5),
    (5, 6),
    (5, 7),
    (6, 1),
    (6, 3),
    (6, 6),
    (7, 2),
    (7, 4),
    (7, 7),
    (8, 1),
    (8, 5),
    (8, 6),
    (9, 2),
    (9, 3),
    (9, 7),
    (10, 4),
    (10, 5),
    (10, 6),
    (11, 1),
    (11, 2),
    (11, 4),
    (12, 3),
    (12, 6),
    (12, 7),
    (13, 1),
    (13, 5),
    (13, 7),
    (14, 2),
    (14, 3),
    (14, 6),
    (15, 4),
    (15, 5),
    (15, 7),
    (16, 1),
    (16, 2),
    (16, 6),
    (17, 3),
    (17, 4),
    (17, 7),
    (18, 1),
    (18, 5),
    (18, 7);


INSERT INTO staff_assignment (
        branch_manager_id,
        staff_id,
        assignment_title,
        assignment_description,
        assignment_deadline,
        assignment_complete,
        is_urgent
    )
VALUES (
        48,
        17,
        'a, scelerisque sed, sapien. Nunc',
        'facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.',
        '2022/01/30',
        TRUE,
        TRUE
    ),
    (
        48,
        38,
        'condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus',
        'eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy',
        '2025/07/12',
        TRUE,
        false
    ),
    (
        45,
        14,
        'vel, venenatis vel, faucibus',
        'est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut',
        '2023/09/26',
        TRUE,
        TRUE
    ),
    (
        40,
        12,
        'quis urna. Nunc quis arcu',
        'suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis',
        '2022/08/28',
        TRUE,
        false
    ),
    (
        40,
        39,
        'consequat purus. Maecenas libero est, congue a, aliquet vel,',
        'tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi',
        '2020/10/20',
        TRUE,
        TRUE
    ),
    (
        45,
        45,
        'faucibus lectus, a sollicitudin orci',
        'luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit.',
        '2023/05/29',
        false,
        TRUE
    ),
    (
        2,
        31,
        'Donec nibh. Quisque nonummy',
        'nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est',
        '2023/07/28',
        false,
        false
    ),
    (
        25,
        24,
        'leo. Morbi neque tellus, imperdiet non, vestibulum nec,',
        'libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus.',
        '2025/11/07',
        false,
        false
    ),
    (
        8,
        33,
        'vulputate, posuere vulputate, lacus. Cras interdum. Nunc',
        'vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim',
        '2022/01/08',
        false,
        false
    ),
    (
        2,
        34,
        'Aenean euismod mauris eu elit. Nulla',
        'tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin',
        '2021/01/24',
        TRUE,
        TRUE
    ),
    (
        45,
        23,
        'montes, nascetur ridiculus mus.',
        'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida',
        '2024/12/26',
        TRUE,
        false
    ),
    (
        45,
        34,
        'Sed eget lacus. Mauris non dui nec urna',
        'Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi',
        '2022/02/08',
        false,
        false
    ),
    (
        25,
        36,
        'sem magna nec quam. Curabitur vel lectus.',
        'nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec',
        '2021/05/04',
        TRUE,
        false
    ),
    (
        45,
        21,
        'pede sagittis augue, eu tempor erat',
        'Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa.',
        '2024/03/13',
        false,
        TRUE
    ),
    (
        40,
        34,
        'elit erat vitae risus. Duis a mi fringilla',
        'arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed',
        '2021/11/17',
        false,
        TRUE
    ),
    (
        23,
        2,
        'imperdiet ullamcorper. Duis at',
        'convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit',
        '2020/10/15',
        TRUE,
        TRUE
    ),
    (
        15,
        31,
        'sem ut cursus luctus, ipsum leo',
        'in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend,',
        '2020/12/28',
        TRUE,
        TRUE
    ),
    (
        48,
        24,
        'odio. Nam interdum enim',
        'id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget,',
        '2020/02/01',
        false,
        false
    ),
    (
        48,
        8,
        'est. Mauris eu turpis. Nulla',
        'malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,',
        '2020/02/26',
        false,
        false
    ),
    (
        15,
        19,
        'vel arcu. Curabitur ut odio vel est tempor bibendum.',
        'lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer',
        '2020/10/13',
        TRUE,
        false
    ),
    (
        40,
        27,
        'dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum',
        'nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna',
        '2023/01/25',
        false,
        false
    ),
    (
        45,
        20,
        'Aenean egestas hendrerit neque. In ornare sagittis felis. Donec',
        'urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu,',
        '2022/09/17',
        false,
        TRUE
    ),
    (
        8,
        42,
        'Curabitur vel lectus. Cum sociis natoque penatibus et',
        'Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu',
        '2021/01/28',
        TRUE,
        false
    ),
    (
        36,
        20,
        'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',
        'adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula',
        '2020/10/28',
        TRUE,
        false
    ),
    (
        45,
        9,
        'tellus sem mollis dui, in sodales',
        'non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec',
        '2025/10/07',
        false,
        false
    ),
    (
        44,
        36,
        'ac turpis egestas. Fusce aliquet',
        'metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor',
        '2022/07/04',
        false,
        false
    ),
    (
        36,
        3,
        'cursus, diam at pretium aliquet, metus urna',
        'sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante.',
        '2020/08/07',
        TRUE,
        false
    ),
    (
        45,
        21,
        'tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae',
        'fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu',
        '2020/05/06',
        TRUE,
        false
    ),
    (
        8,
        24,
        'amet orci. Ut sagittis',
        'ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy',
        '2022/08/28',
        TRUE,
        false
    ),
    (
        23,
        10,
        'eu tellus. Phasellus elit pede, malesuada',
        'vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio.',
        '2022/03/09',
        TRUE,
        TRUE
    ),
    (
        15,
        20,
        'eu, odio. Phasellus at augue',
        'orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae,',
        '2020/04/02',
        false,
        TRUE
    ),
    (
        8,
        14,
        'Ut nec urna et arcu imperdiet ullamcorper. Duis at',
        'viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam',
        '2024/03/18',
        TRUE,
        false
    ),
    (
        48,
        2,
        'pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus',
        'Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus',
        '2021/06/02',
        TRUE,
        TRUE
    ),
    (
        44,
        29,
        'mi enim, condimentum eget, volutpat ornare, facilisis eget,',
        'cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras',
        '2023/09/14',
        TRUE,
        false
    ),
    (
        40,
        16,
        'nisi nibh lacinia orci, consectetuer euismod est',
        'Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu',
        '2020/09/23',
        false,
        false
    ),
    (
        15,
        40,
        'Aliquam gravida mauris ut mi. Duis risus odio,',
        'sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat',
        '2024/09/19',
        false,
        TRUE
    ),
    (
        8,
        21,
        'Ut sagittis lobortis mauris. Suspendisse aliquet molestie',
        'mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,',
        '2021/03/06',
        false,
        TRUE
    ),
    (
        45,
        17,
        'lacinia. Sed congue, elit',
        'ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,',
        '2025/10/05',
        false,
        TRUE
    ),
    (
        25,
        33,
        'dignissim tempor arcu. Vestibulum',
        'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a',
        '2021/06/24',
        false,
        false
    ),
    (
        44,
        34,
        'est, congue a, aliquet vel, vulputate eu, odio.',
        'Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget',
        '2022/02/17',
        false,
        false
    ),
    (
        36,
        47,
        'Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam',
        'interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique',
        '2021/11/12',
        false,
        TRUE
    ),
    (
        25,
        46,
        'lorem, auctor quis, tristique ac, eleifend vitae, erat.',
        'ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi',
        '2021/12/22',
        TRUE,
        TRUE
    ),
    (
        25,
        9,
        'gravida. Praesent eu nulla at sem molestie sodales.',
        'Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est',
        '2022/04/22',
        false,
        TRUE
    ),
    (
        8,
        27,
        'Proin eget odio. Aliquam vulputate ullamcorper magna.',
        'Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et',
        '2022/01/09',
        false,
        TRUE
    ),
    (
        48,
        16,
        'ac mattis ornare, lectus ante dictum mi,',
        'in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi,',
        '2024/09/27',
        TRUE,
        TRUE
    ),
    (
        45,
        27,
        'quis, pede. Suspendisse dui. Fusce',
        'Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis',
        '2023/05/15',
        TRUE,
        TRUE
    ),
    (
        23,
        8,
        'velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer',
        'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.',
        '2021/12/24',
        TRUE,
        TRUE
    ),
    (
        40,
        31,
        'nulla. In tincidunt congue turpis. In condimentum.',
        'et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat,',
        '2025/01/19',
        TRUE,
        TRUE
    ),
    (
        40,
        14,
        'volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla',
        'sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non',
        '2023/02/18',
        TRUE,
        TRUE
    ),
    (
        23,
        11,
        'ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend',
        'sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at,',
        '2021/05/04',
        false,
        TRUE
    ),
    (
        40,
        48,
        'orci lobortis augue scelerisque mollis. Phasellus libero',
        'in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem,',
        '2021/05/21',
        false,
        TRUE
    ),
    (
        48,
        46,
        'pede et risus. Quisque libero',
        'tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem,',
        '2024/03/09',
        TRUE,
        TRUE
    ),
    (
        36,
        49,
        'Sed malesuada augue ut lacus. Nulla',
        'Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet',
        '2024/10/18',
        false,
        TRUE
    ),
    (
        40,
        3,
        'sem molestie sodales. Mauris blandit enim consequat purus. Maecenas',
        'eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae,',
        '2020/12/26',
        false,
        false
    ),
    (
        8,
        47,
        'gravida sit amet, dapibus id, blandit at, nisi. Cum sociis',
        'rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id,',
        '2022/08/20',
        false,
        TRUE
    ),
    (
        40,
        46,
        'est tempor bibendum. Donec felis orci,',
        'Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa.',
        '2020/02/08',
        false,
        TRUE
    ),
    (
        23,
        44,
        'mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a,',
        'Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend',
        '2025/02/18',
        TRUE,
        false
    ),
    (
        2,
        44,
        'nibh. Quisque nonummy ipsum non arcu.',
        'aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem,',
        '2021/09/30',
        false,
        TRUE
    ),
    (
        15,
        17,
        'quam dignissim pharetra. Nam ac',
        'ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim',
        '2025/01/14',
        TRUE,
        false
    ),
    (
        2,
        37,
        'per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare.',
        'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus',
        '2024/12/14',
        TRUE,
        false
    ),
    (
        15,
        31,
        'elementum at, egestas a, scelerisque sed, sapien.',
        'Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc',
        '2022/03/21',
        TRUE,
        TRUE
    ),
    (
        36,
        2,
        'ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor',
        'Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla',
        '2021/09/30',
        TRUE,
        TRUE
    ),
    (
        15,
        12,
        'Sed dictum. Proin eget odio. Aliquam',
        'Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo',
        '2021/07/31',
        false,
        TRUE
    ),
    (
        44,
        33,
        'sodales. Mauris blandit enim consequat purus.',
        'amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer',
        '2025/06/18',
        false,
        false
    ),
    (
        8,
        41,
        'Donec luctus aliquet odio. Etiam ligula tortor, dictum eu,',
        'nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque',
        '2021/02/17',
        false,
        TRUE
    ),
    (
        40,
        30,
        'scelerisque, lorem ipsum sodales purus, in',
        'tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur',
        '2021/10/16',
        TRUE,
        false
    ),
    (
        48,
        5,
        'rutrum eu, ultrices sit amet, risus. Donec',
        'malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis',
        '2025/04/10',
        false,
        TRUE
    ),
    (
        44,
        29,
        'Pellentesque habitant morbi tristique senectus et',
        'dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus',
        '2021/11/10',
        false,
        TRUE
    ),
    (
        25,
        13,
        'purus mauris a nunc. In at pede.',
        'vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam',
        '2023/07/14',
        false,
        false
    ),
    (
        44,
        45,
        'dictum eu, placerat eget, venenatis a,',
        'sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem',
        '2024/12/08',
        TRUE,
        TRUE
    ),
    (
        36,
        10,
        'tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero',
        'at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis',
        '2025/08/24',
        false,
        TRUE
    ),
    (
        15,
        49,
        'et, rutrum non, hendrerit id, ante. Nunc mauris sapien,',
        'diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare',
        '2024/07/10',
        TRUE,
        false
    ),
    (
        8,
        43,
        'semper egestas, urna justo faucibus lectus, a sollicitudin orci',
        'gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate',
        '2020/02/04',
        false,
        TRUE
    ),
    (
        15,
        35,
        'neque tellus, imperdiet non,',
        'Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor',
        '2021/10/23',
        false,
        false
    ),
    (
        44,
        49,
        'lorem lorem, luctus ut, pellentesque',
        'dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec',
        '2024/08/13',
        false,
        false
    ),
    (
        44,
        17,
        'non dui nec urna suscipit',
        'conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie',
        '2022/04/02',
        false,
        TRUE
    ),
    (
        44,
        7,
        'lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor',
        'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus,',
        '2024/09/01',
        false,
        TRUE
    ),
    (
        45,
        7,
        'Nunc commodo auctor velit.',
        'lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet',
        '2023/05/26',
        TRUE,
        false
    ),
    (
        25,
        39,
        'sagittis semper. Nam tempor diam dictum sapien. Aenean massa.',
        'posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut',
        '2025/09/05',
        TRUE,
        false
    ),
    (
        45,
        31,
        'scelerisque mollis. Phasellus libero mauris, aliquam eu,',
        'tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
        '2025/12/06',
        TRUE,
        TRUE
    ),
    (
        36,
        40,
        'iaculis aliquet diam. Sed diam lorem, auctor',
        'erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit',
        '2021/10/03',
        TRUE,
        TRUE
    ),
    (
        40,
        43,
        'Suspendisse tristique neque venenatis lacus.',
        'Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu',
        '2021/03/16',
        TRUE,
        TRUE
    ),
    (
        44,
        39,
        'arcu eu odio tristique pharetra. Quisque ac',
        'risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec',
        '2023/06/12',
        TRUE,
        false
    ),
    (
        8,
        8,
        'turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi',
        'Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin',
        '2025/05/23',
        TRUE,
        TRUE
    ),
    (
        2,
        14,
        'ipsum sodales purus, in molestie tortor nibh sit amet',
        'eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non',
        '2020/12/06',
        false,
        false
    ),
    (
        36,
        11,
        'auctor, nunc nulla vulputate dui, nec tempus mauris erat eget',
        'quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate',
        '2022/08/20',
        false,
        false
    ),
    (
        45,
        19,
        'eget mollis lectus pede et risus. Quisque libero lacus, varius',
        'leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate',
        '2022/12/02',
        TRUE,
        TRUE
    ),
    (
        23,
        34,
        'congue, elit sed consequat auctor, nunc',
        'enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare,',
        '2025/05/02',
        TRUE,
        TRUE
    ),
    (
        25,
        18,
        'aliquam iaculis, lacus pede sagittis augue, eu',
        'faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis',
        '2025/08/06',
        TRUE,
        TRUE
    ),
    (
        23,
        20,
        'vulputate dui, nec tempus mauris erat eget ipsum.',
        'vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero.',
        '2022/04/03',
        TRUE,
        false
    ),
    (
        36,
        22,
        'quis turpis vitae purus gravida sagittis. Duis gravida. Praesent',
        'arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget,',
        '2022/12/26',
        false,
        false
    ),
    (
        45,
        11,
        'vestibulum massa rutrum magna. Cras convallis convallis dolor.',
        'a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a',
        '2021/02/27',
        false,
        false
    ),
    (
        40,
        12,
        'turpis vitae purus gravida sagittis.',
        'Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus',
        '2022/04/19',
        false,
        TRUE
    ),
    (
        45,
        27,
        'in aliquet lobortis, nisi nibh lacinia',
        'mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare.',
        '2025/01/18',
        false,
        TRUE
    ),
    (
        45,
        45,
        'sem egestas blandit. Nam nulla magna, malesuada vel,',
        'Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a',
        '2022/10/09',
        false,
        false
    ),
    (
        48,
        47,
        'et malesuada fames ac turpis egestas.',
        'lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes,',
        '2022/08/24',
        TRUE,
        TRUE
    ),
    (
        45,
        18,
        'sapien. Nunc pulvinar arcu et pede. Nunc',
        'elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam',
        '2020/05/09',
        TRUE,
        false
    ),
    (
        48,
        27,
        'tincidunt nibh. Phasellus nulla. Integer vulputate, risus a',
        'Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat',
        '2025/05/31',
        TRUE,
        TRUE
    ),
    (
        40,
        21,
        'ligula elit, pretium et, rutrum non,',
        'sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc',
        '2023/06/16',
        false,
        TRUE
    ),
    (
        45,
        41,
        'interdum enim non nisi. Aenean eget metus. In',
        'vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in,',
        '2024/05/09',
        false,
        false
    ),
    (
        15,
        12,
        'lorem, auctor quis, tristique ac,',
        'Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate,',
        '2021/01/04',
        false,
        false
    ),
    (
        8,
        14,
        'erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla',
        'In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra',
        '2025/12/06',
        TRUE,
        TRUE
    ),
    (
        8,
        48,
        'elementum, lorem ut aliquam iaculis, lacus pede',
        'magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non',
        '2021/11/23',
        false,
        false
    ),
    (
        8,
        47,
        'In scelerisque scelerisque dui. Suspendisse',
        'neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum',
        '2023/11/07',
        TRUE,
        TRUE
    ),
    (
        15,
        2,
        'tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec,',
        'eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus.',
        '2020/12/22',
        false,
        false
    ),
    (
        44,
        31,
        'metus. In lorem. Donec elementum, lorem ut',
        'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin',
        '2024/06/07',
        TRUE,
        TRUE
    ),
    (
        23,
        48,
        'ante. Nunc mauris sapien, cursus',
        'purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus',
        '2020/07/19',
        TRUE,
        false
    ),
    (
        2,
        4,
        'egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed',
        'ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes,',
        '2022/12/16',
        TRUE,
        TRUE
    ),
    (
        45,
        39,
        'semper pretium neque. Morbi quis urna. Nunc',
        'blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus',
        '2023/10/11',
        TRUE,
        TRUE
    ),
    (
        48,
        9,
        'scelerisque dui. Suspendisse ac metus vitae',
        'Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra,',
        '2024/05/27',
        false,
        false
    ),
    (
        36,
        9,
        'luctus et ultrices posuere cubilia Curae',
        'elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum',
        '2023/05/07',
        TRUE,
        TRUE
    ),
    (
        23,
        21,
        'et magnis dis parturient montes,',
        'libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et',
        '2022/07/27',
        false,
        false
    ),
    (
        8,
        36,
        'posuere, enim nisl elementum purus, accumsan interdum libero dui nec',
        'nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales',
        '2023/08/05',
        TRUE,
        false
    ),
    (
        44,
        9,
        'eu neque pellentesque massa lobortis',
        'enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan',
        '2022/08/27',
        false,
        false
    ),
    (
        48,
        42,
        'ut eros non enim commodo hendrerit. Donec porttitor tellus non',
        'ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in,',
        '2021/09/23',
        TRUE,
        TRUE
    ),
    (
        36,
        3,
        'arcu. Aliquam ultrices iaculis odio. Nam interdum',
        'elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque',
        '2020/12/04',
        false,
        false
    ),
    (
        8,
        47,
        'ut nisi a odio',
        'nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt',
        '2022/12/13',
        false,
        false
    ),
    (
        44,
        49,
        'Cras pellentesque. Sed dictum. Proin eget odio. Aliquam',
        'diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel,',
        '2020/01/01',
        false,
        false
    ),
    (
        45,
        14,
        'varius ultrices, mauris ipsum porta elit, a',
        'dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut',
        '2020/06/22',
        TRUE,
        false
    ),
    (
        8,
        34,
        'Ut sagittis lobortis mauris. Suspendisse aliquet',
        'rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per',
        '2024/01/07',
        false,
        false
    ),
    (
        44,
        25,
        'Nullam scelerisque neque sed sem',
        'velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut',
        '2025/04/30',
        TRUE,
        TRUE
    ),
    (
        44,
        22,
        'mi eleifend egestas. Sed pharetra, felis eget varius',
        'et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa.',
        '2023/05/07',
        TRUE,
        TRUE
    ),
    (
        44,
        17,
        'Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum',
        'ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus',
        '2020/08/26',
        false,
        false
    ),
    (
        2,
        3,
        'Cras eget nisi dictum augue malesuada malesuada.',
        'pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus',
        '2023/12/28',
        TRUE,
        false
    ),
    (
        2,
        45,
        'vestibulum nec, euismod in, dolor. Fusce',
        'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales',
        '2023/09/25',
        TRUE,
        TRUE
    ),
    (
        36,
        35,
        'vel sapien imperdiet ornare. In faucibus.',
        'in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue',
        '2021/08/24',
        TRUE,
        TRUE
    ),
    (
        15,
        19,
        'ipsum non arcu. Vivamus sit amet risus. Donec egestas.',
        'ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac',
        '2021/08/02',
        TRUE,
        TRUE
    ),
    (
        44,
        35,
        'at, velit. Cras lorem lorem,',
        'venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu',
        '2023/08/21',
        false,
        TRUE
    ),
    (
        2,
        23,
        'Praesent luctus. Curabitur egestas nunc sed libero.',
        'ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit',
        '2021/12/03',
        false,
        false
    ),
    (
        8,
        18,
        'mus. Donec dignissim magna a tortor. Nunc',
        'facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer',
        '2024/06/23',
        TRUE,
        TRUE
    ),
    (
        15,
        31,
        'urna justo faucibus lectus, a sollicitudin orci',
        'ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id,',
        '2025/08/18',
        false,
        false
    ),
    (
        36,
        27,
        'nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus',
        'ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse',
        '2021/09/19',
        TRUE,
        TRUE
    ),
    (
        8,
        47,
        'viverra. Donec tempus, lorem fringilla ornare placerat,',
        'varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque',
        '2020/06/28',
        TRUE,
        TRUE
    ),
    (
        23,
        16,
        'In condimentum. Donec at arcu. Vestibulum ante ipsum',
        'odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl',
        '2022/01/13',
        TRUE,
        false
    ),
    (
        40,
        47,
        'vehicula. Pellentesque tincidunt tempus risus.',
        'vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui nec ipsum.',
        '2021/12/31',
        TRUE,
        false
    ),
    (
        45,
        5,
        'nunc. Quisque ornare tortor at risus. Nunc ac',
        'porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus,',
        '2024/12/14',
        false,
        TRUE
    ),
    (
        40,
        6,
        'neque. In ornare sagittis felis. Donec tempor, est ac mattis',
        'augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,',
        '2022/11/29',
        TRUE,
        false
    ),
    (
        40,
        49,
        'metus. In nec orci. Donec',
        'eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad',
        '2022/02/15',
        false,
        TRUE
    ),
    (
        2,
        7,
        'a felis ullamcorper viverra. Maecenas iaculis',
        'consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget',
        '2021/04/12',
        TRUE,
        TRUE
    ),
    (
        23,
        35,
        'Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam',
        'Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc',
        '2025/11/02',
        false,
        TRUE
    ),
    (
        2,
        22,
        'Sed congue, elit sed consequat auctor, nunc nulla vulputate dui,',
        'rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus',
        '2023/05/20',
        TRUE,
        false
    ),
    (
        36,
        45,
        'et magnis dis parturient montes, nascetur ridiculus mus.',
        'placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem',
        '2023/06/10',
        TRUE,
        false
    ),
    (
        8,
        2,
        'consequat enim diam vel arcu. Curabitur ut odio vel',
        'mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet',
        '2024/02/06',
        false,
        false
    ),
    (
        2,
        33,
        'cursus non, egestas a, dui. Cras pellentesque. Sed',
        'elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi',
        '2022/11/23',
        TRUE,
        false
    ),
    (
        44,
        29,
        'interdum ligula eu enim. Etiam',
        'feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient',
        '2021/12/30',
        false,
        TRUE
    ),
    (
        36,
        36,
        'egestas blandit. Nam nulla magna, malesuada vel, convallis in,',
        'Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.',
        '2021/10/10',
        TRUE,
        TRUE
    ),
    (
        25,
        3,
        'lobortis ultrices. Vivamus rhoncus. Donec est.',
        'tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus.',
        '2024/10/03',
        TRUE,
        TRUE
    ),
    (
        25,
        3,
        'Nam ligula elit, pretium et, rutrum',
        'risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac',
        '2023/01/22',
        TRUE,
        false
    ),
    (
        40,
        37,
        'Curabitur massa. Vestibulum accumsan neque et nunc. Quisque',
        'lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien',
        '2024/10/15',
        false,
        false
    ),
    (
        48,
        11,
        'lobortis tellus justo sit amet nulla. Donec non',
        'a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales.',
        '2020/08/09',
        TRUE,
        TRUE
    ),
    (
        23,
        33,
        'litora torquent per conubia nostra, per inceptos hymenaeos. Mauris',
        'eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia',
        '2021/08/25',
        false,
        false
    ),
    (
        23,
        39,
        'parturient montes, nascetur ridiculus mus. Donec',
        'nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed',
        '2025/06/01',
        false,
        TRUE
    ),
    (
        44,
        38,
        'Donec feugiat metus sit amet ante. Vivamus non lorem vitae',
        'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper',
        '2024/08/01',
        TRUE,
        false
    ),
    (
        48,
        20,
        'Nullam feugiat placerat velit. Quisque varius. Nam',
        'sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend,',
        '2025/12/21',
        false,
        TRUE
    ),
    (
        23,
        50,
        'urna. Ut tincidunt vehicula risus.',
        'netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio.',
        '2023/09/30',
        false,
        TRUE
    ),
    (
        40,
        5,
        'dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris,',
        'enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet',
        '2021/08/16',
        TRUE,
        TRUE
    ),
    (
        2,
        22,
        'luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat',
        'eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor',
        '2025/05/05',
        TRUE,
        TRUE
    ),
    (
        2,
        47,
        'sem elit, pharetra ut,',
        'morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a',
        '2021/02/19',
        false,
        false
    ),
    (
        36,
        42,
        'vitae aliquam eros turpis non enim. Mauris',
        'Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies',
        '2024/02/03',
        false,
        false
    ),
    (
        44,
        6,
        'enim. Curabitur massa. Vestibulum accumsan',
        'Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.',
        '2024/08/24',
        false,
        false
    ),
    (
        36,
        49,
        'torquent per conubia nostra, per inceptos hymenaeos.',
        'nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.',
        '2025/11/15',
        false,
        false
    ),
    (
        48,
        9,
        'tellus sem mollis dui, in sodales',
        'Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc',
        '2023/08/15',
        false,
        false
    ),
    (
        48,
        13,
        'quis turpis vitae purus gravida',
        'sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi',
        '2024/02/09',
        TRUE,
        false
    ),
    (
        44,
        41,
        'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',
        'Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel',
        '2020/06/05',
        false,
        false
    ),
    (
        36,
        23,
        'non magna. Nam ligula elit, pretium et,',
        'augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis',
        '2025/09/11',
        false,
        TRUE
    ),
    (
        25,
        45,
        'aliquet magna a neque. Nullam ut nisi a odio',
        'eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis',
        '2021/12/19',
        TRUE,
        TRUE
    ),
    (
        48,
        39,
        'felis orci, adipiscing non, luctus sit amet, faucibus',
        'elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim',
        '2024/04/17',
        TRUE,
        TRUE
    ),
    (
        45,
        39,
        'placerat, orci lacus vestibulum lorem, sit amet',
        'mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed',
        '2025/06/11',
        TRUE,
        false
    ),
    (
        23,
        36,
        'Etiam imperdiet dictum magna. Ut tincidunt orci quis',
        'ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras',
        '2021/07/01',
        TRUE,
        TRUE
    ),
    (
        8,
        5,
        'Sed neque. Sed eget lacus. Mauris non dui nec urna',
        'mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui.',
        '2022/03/18',
        TRUE,
        TRUE
    ),
    (
        15,
        23,
        'felis purus ac tellus. Suspendisse sed',
        'lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus',
        '2023/12/01',
        false,
        TRUE
    ),
    (
        44,
        32,
        'nec ante blandit viverra. Donec tempus, lorem fringilla',
        'ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies',
        '2020/10/31',
        false,
        TRUE
    ),
    (
        23,
        7,
        'magna. Nam ligula elit, pretium',
        'nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget',
        '2025/01/14',
        TRUE,
        false
    ),
    (
        36,
        27,
        'auctor, velit eget laoreet posuere, enim nisl elementum',
        'ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed',
        '2025/12/28',
        false,
        false
    ),
    (
        45,
        17,
        'eu elit. Nulla facilisi. Sed neque.',
        'arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae',
        '2020/06/13',
        TRUE,
        TRUE
    ),
    (
        44,
        40,
        'vitae erat vel pede blandit congue. In',
        'risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum',
        '2023/02/18',
        TRUE,
        false
    ),
    (
        2,
        17,
        'Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie',
        'Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae',
        '2023/10/19',
        TRUE,
        TRUE
    ),
    (
        25,
        1,
        'sociis natoque penatibus et magnis dis parturient montes,',
        'eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut',
        '2025/05/21',
        TRUE,
        false
    ),
    (
        15,
        40,
        'vitae erat vel pede blandit congue. In scelerisque',
        'Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae',
        '2025/03/23',
        false,
        false
    ),
    (
        40,
        7,
        'sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse',
        'id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes,',
        '2024/05/16',
        TRUE,
        false
    ),
    (
        40,
        11,
        'nulla ante, iaculis nec, eleifend non, dapibus',
        'justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a,',
        '2021/05/19',
        false,
        TRUE
    ),
    (
        45,
        35,
        'egestas nunc sed libero. Proin sed',
        'egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec',
        '2024/03/07',
        false,
        TRUE
    ),
    (
        48,
        2,
        'auctor velit. Aliquam nisl. Nulla eu neque pellentesque',
        'ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue',
        '2020/08/27',
        false,
        false
    ),
    (
        25,
        13,
        'lacinia mattis. Integer eu lacus. Quisque imperdiet, erat',
        'Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet',
        '2024/05/25',
        false,
        false
    ),
    (
        48,
        34,
        'in lobortis tellus justo sit',
        'Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget',
        '2020/04/05',
        TRUE,
        false
    ),
    (
        25,
        26,
        'Fusce aliquam, enim nec',
        'tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis',
        '2023/02/07',
        false,
        false
    ),
    (
        23,
        15,
        'tincidunt, nunc ac mattis ornare, lectus ante dictum mi,',
        'congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget',
        '2023/12/16',
        false,
        TRUE
    ),
    (
        8,
        24,
        'semper. Nam tempor diam dictum sapien. Aenean',
        'euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor',
        '2023/04/06',
        TRUE,
        TRUE
    ),
    (
        15,
        7,
        'ridiculus mus. Aenean eget magna.',
        'vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque.',
        '2020/03/08',
        false,
        false
    ),
    (
        40,
        25,
        'molestie tellus. Aenean egestas hendrerit neque.',
        'malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget',
        '2023/01/25',
        false,
        false
    ),
    (
        8,
        33,
        'interdum ligula eu enim. Etiam imperdiet dictum magna.',
        'massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis',
        '2023/04/11',
        TRUE,
        TRUE
    ),
    (
        2,
        8,
        'lacinia vitae, sodales at, velit.',
        'auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem',
        '2021/09/05',
        TRUE,
        false
    ),
    (
        25,
        48,
        'natoque penatibus et magnis dis parturient',
        'sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris',
        '2020/05/28',
        TRUE,
        TRUE
    ),
    (
        45,
        18,
        'non dui nec urna suscipit',
        'risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.',
        '2022/10/06',
        TRUE,
        TRUE
    ),
    (
        45,
        28,
        'nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui.',
        'sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu',
        '2021/03/07',
        false,
        TRUE
    ),
    (
        23,
        4,
        'odio vel est tempor bibendum. Donec felis orci,',
        'neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non,',
        '2022/04/03',
        TRUE,
        false
    ),
    (
        8,
        48,
        'pretium aliquet, metus urna convallis erat, eget tincidunt dui',
        'sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum',
        '2025/07/05',
        false,
        TRUE
    ),
    (
        8,
        25,
        'Sed nunc est, mollis non,',
        'nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla',
        '2021/10/02',
        false,
        false
    ),
    (
        40,
        43,
        'amet, faucibus ut, nulla.',
        'Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam',
        '2020/01/18',
        false,
        false
    ),
    (
        8,
        1,
        'in felis. Nulla tempor augue ac ipsum. Phasellus',
        'Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan',
        '2022/09/25',
        false,
        TRUE
    );


INSERT INTO session_staff (session_id, staff_id)
VALUES (9, 30),
    (18, 47),
    (27, 23),
    (33, 39),
    (11, 36),
    (28, 2),
    (16, 4),
    (38, 4),
    (40, 5),
    (31, 4),
    (40, 8),
    (22, 3),
    (24, 2),
    (26, 2),
    (8, 35),
    (16, 2),
    (23, 1),
    (23, 3),
    (16, 1),
    (4, 46),
    (21, 4),
    (14, 1),
    (1, 12),
    (32, 6),
    (19, 4),
    (34, 1),
    (8, 11),
    (12, 2),
    (14, 4),
    (4, 6),
    (34, 3),
    (26, 1),
    (7, 23),
    (23, 2),
    (40, 1),
    (34, 8),
    (14, 3),
    (31, 5),
    (36, 2),
    (17, 4),
    (6, 8),
    (37, 8),
    (16, 3),
    (38, 3),
    (39, 3),
    (1, 18),
    (3, 18),
    (10, 4),
    (37, 2),
    (32, 1),
    (8, 2),
    (36, 3),
    (38, 2),
    (37, 4),
    (3, 32),
    (6, 20),
    (26, 4),
    (19, 3),
    (38, 7),
    (15, 3),
    (29, 1),
    (12, 4),
    (6, 27),
    (39, 1),
    (20, 3),
    (22, 2),
    (29, 4),
    (15, 1),
    (3, 21),
    (21, 1),
    (5, 36),
    (7, 38),
    (13, 2),
    (30, 4),
    (5, 14),
    (35, 1),
    (14, 2),
    (24, 1),
    (3, 50),
    (32, 4),
    (6, 39),
    (38, 1),
    (32, 5),
    (19, 2),
    (25, 2),
    (32, 2),
    (20, 1),
    (4, 4),
    (30, 2),
    (25, 1),
    (40, 3),
    (10, 1),
    (8, 8),
    (6, 34),
    (24, 4),
    (37, 1),
    (7, 19),
    (35, 3),
    (37, 3),
    (5, 29),
    (25, 7),
    (19, 1),
    (40, 4),
    (4, 24),
    (21, 2),
    (8, 45),
    (3, 43),
    (2, 2),
    (4, 42),
    (24, 3),
    (31, 1),
    (20, 5),
    (4, 21),
    (20, 4),
    (7, 9),
    (6, 9),
    (28, 4),
    (26, 3),
    (16, 6),
    (17, 2),
    (3, 11),
    (28, 1),
    (15, 2);


INSERT INTO evaluation_session (
        tutor_id,
        student_id,
        session_datetime,
        room_id,
        session_notes,
        is_online
    )
VALUES (18, 29, '2024-05-03 11:40:00', 15, NULL, false),
    (16, 5, '2021-02-24 15:40:00', 3, NULL, false),
    (
        41,
        21,
        '2021-01-31 14:00:00',
        16,
        'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris',
        false
    ),
    (42, 25, '2023-11-28 12:20:00', 3, NULL, false),
    (
        38,
        3,
        '2022-09-04 11:20:00',
        NULL,
        'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a',
        TRUE
    ),
    (36, 10, '2021-09-20 8:00:00', NULL, NULL, TRUE),
    (27, 12, '2024-02-04 12:30:00', 20, NULL, false),
    (32, 7, '2023-04-19 8:40:00', NULL, NULL, TRUE),
    (
        41,
        21,
        '2022-01-20 17:50:00',
        2,
        'lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient',
        false
    ),
    (14, 5, '2021-05-29 16:20:00', NULL, NULL, TRUE),
    (14, 19, '2024-11-07 16:00:00', NULL, NULL, TRUE),
    (
        11,
        4,
        '2021-03-03 16:50:00',
        NULL,
        'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at',
        TRUE
    ),
    (28, 19, '2021-04-25 13:40:00', 6, NULL, false),
    (
        10,
        12,
        '2022-07-05 9:10:00',
        NULL,
        'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet',
        TRUE
    ),
    (23, 16, '2022-10-10 11:10:00', NULL, NULL, TRUE),
    (
        42,
        31,
        '2023-01-31 13:20:00',
        NULL,
        'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo',
        TRUE
    ),
    (
        37,
        11,
        '2021-09-03 15:50:00',
        NULL,
        'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio',
        TRUE
    ),
    (21, 11, '2024-01-22 10:30:00', NULL, NULL, TRUE),
    (
        12,
        1,
        '2022-05-18 10:30:00',
        8,
        'lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut',
        false
    ),
    (32, 2, '2021-07-04 13:20:00', 15, NULL, false),
    (31, 31, '2021-04-29 17:20:00', 3, NULL, false),
    (
        49,
        3,
        '2024-11-12 11:20:00',
        9,
        'dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim',
        false
    ),
    (
        18,
        21,
        '2023-04-23 10:00:00',
        3,
        'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo',
        false
    ),
    (34, 12, '2024-03-20 17:20:00', 8, NULL, false),
    (38, 24, '2022-05-09 14:00:00', NULL, NULL, TRUE),
    (
        46,
        26,
        '2024-02-12 12:50:00',
        NULL,
        'convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec',
        TRUE
    ),
    (38, 30, '2022-06-23 12:30:00', 16, NULL, false),
    (20, 19, '2022-08-27 14:30:00', NULL, NULL, TRUE),
    (33, 16, '2021-06-21 14:30:00', 19, NULL, false),
    (40, 28, '2022-06-03 8:00:00', NULL, NULL, TRUE),
    (
        48,
        17,
        '2023-10-18 13:20:00',
        NULL,
        'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin',
        TRUE
    ),
    (
        47,
        24,
        '2022-03-12 15:30:00',
        NULL,
        'posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis',
        TRUE
    ),
    (
        46,
        19,
        '2023-01-07 13:50:00',
        NULL,
        'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam',
        TRUE
    ),
    (
        37,
        13,
        '2021-11-02 9:10:00',
        NULL,
        'aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi',
        TRUE
    ),
    (6, 6, '2021-01-26 15:50:00', NULL, NULL, TRUE),
    (50, 32, '2022-09-27 9:00:00', NULL, NULL, TRUE),
    (
        7,
        24,
        '2023-03-26 10:50:00',
        8,
        'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse',
        false
    ),
    (
        18,
        1,
        '2022-11-12 11:00:00',
        NULL,
        'vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum',
        TRUE
    ),
    (14, 12, '2021-08-29 11:20:00', NULL, NULL, TRUE),
    (12, 13, '2021-01-29 10:00:00', NULL, NULL, TRUE),
    (
        4,
        14,
        '2023-07-10 15:20:00',
        NULL,
        'volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor',
        TRUE
    ),
    (15, 1, '2023-07-25 8:40:00', NULL, NULL, TRUE),
    (15, 2, '2024-05-30 15:30:00', 10, NULL, false),
    (2, 21, '2021-09-15 17:10:00', 5, NULL, false),
    (
        9,
        15,
        '2022-06-24 17:00:00',
        NULL,
        'massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget',
        TRUE
    ),
    (
        10,
        9,
        '2021-07-11 15:10:00',
        NULL,
        'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl',
        TRUE
    ),
    (7, 5, '2022-05-06 8:00:00', 10, NULL, false),
    (15, 6, '2023-04-15 9:10:00', NULL, NULL, TRUE),
    (24, 28, '2024-06-05 15:50:00', NULL, NULL, TRUE),
    (
        37,
        8,
        '2023-06-05 9:00:00',
        NULL,
        'curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam',
        TRUE
    ),
    (
        7,
        30,
        '2024-10-05 16:30:00',
        9,
        'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent',
        false
    ),
    (
        19,
        6,
        '2022-06-16 11:10:00',
        NULL,
        'erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum',
        TRUE
    ),
    (39, 6, '2021-10-24 15:10:00', NULL, NULL, TRUE),
    (
        7,
        26,
        '2023-01-15 9:50:00',
        13,
        'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas',
        false
    ),
    (22, 10, '2022-08-05 12:10:00', NULL, NULL, TRUE),
    (
        44,
        23,
        '2023-09-28 15:30:00',
        1,
        'nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam',
        false
    ),
    (7, 8, '2024-04-17 16:30:00', NULL, NULL, TRUE),
    (17, 8, '2022-10-01 14:30:00', 10, NULL, false),
    (27, 17, '2024-06-19 8:50:00', 13, NULL, false),
    (28, 25, '2024-01-15 14:20:00', NULL, NULL, TRUE),
    (
        2,
        25,
        '2023-03-16 12:30:00',
        NULL,
        'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis',
        TRUE
    ),
    (21, 21, '2023-06-29 8:50:00', 18, NULL, false),
    (28, 15, '2021-11-17 16:10:00', 19, NULL, false),
    (
        7,
        17,
        '2021-09-19 11:00:00',
        NULL,
        'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis',
        TRUE
    ),
    (
        16,
        10,
        '2021-02-12 16:50:00',
        NULL,
        'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas',
        TRUE
    ),
    (2, 10, '2022-11-17 10:00:00', 11, NULL, false),
    (
        38,
        3,
        '2023-08-16 8:20:00',
        NULL,
        'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam',
        TRUE
    ),
    (
        8,
        16,
        '2024-02-17 9:30:00',
        20,
        'ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis',
        false
    ),
    (28, 11, '2024-04-25 13:30:00', 19, NULL, false),
    (45, 27, '2022-02-03 16:00:00', NULL, NULL, TRUE),
    (48, 5, '2022-09-16 12:40:00', 1, NULL, false),
    (17, 11, '2022-09-17 11:50:00', NULL, NULL, TRUE),
    (35, 22, '2021-08-28 17:10:00', 8, NULL, false),
    (
        8,
        24,
        '2021-06-25 16:40:00',
        NULL,
        'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum',
        TRUE
    ),
    (15, 25, '2022-11-03 13:40:00', NULL, NULL, TRUE),
    (34, 24, '2023-10-16 10:30:00', NULL, NULL, TRUE),
    (39, 20, '2023-12-19 13:40:00', NULL, NULL, TRUE),
    (
        33,
        9,
        '2024-05-02 17:10:00',
        9,
        'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl',
        false
    );





INSERT INTO session_student (session_id, student_id, attendance_status, feedback_general_rating, feedback_online_connection_quality, feedback_concept_understood_rating, feedback_extra_notes)
VALUES
    (1,2,'Present',NULL,NULL,NULL,'Maecenas dictum ipsum leo.'),
    (3,3,'Present',NULL,3,2,'Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
    (3,5,'Present',1,3,NULL,'Mauris vestibulum,'),
    (4,8,'Present',5,5,NULL,'Vestibulum ante ipsum primis'),
    (5,9,'Present',5,7,6,'Nam ultricies dolor et tellus hendrerit,'),
    (7,9,'Present',6,8,8,'Pellentesque porttitor nisl sed semper mattis.'),
    (6,9,'late',1,9,10,'Phasellus sed ante nibh.'),
    (12,11,'late',NULL,9,3,'Integer feugiat libero sed tristique mattis.'),
    (15,15,'Not Present',NULL,NULL,NULL,'Morbi nec aliquam arcu,'),
    (20,19,'Late',2,3,5,'Phasellus eu ipsum ut orci pellentesque sollicitudin ut vel ipsum.'),
    (22,19,'Not Present',NULL,NULL,NULL,'Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
    (24,20,'Present',3,7,NULL,'Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
    (28,21,'Present',6,9,NULL,'In hac habitasse platea dictumst.'),
    (10,22,'Present',8,9,5,'In hac habitasse platea dictumst.'),
    (19,24,'Present',9,8,8,'In hac habitasse platea dictumst.'),
    (11,25,'Late',10,4,5,'In hac habitasse platea dictumst.'),
    (23,25,'Not Present',NULL,NULL,NULL,'Suspendisse potenti.'),
    (25,26,'Not Present',NULL,NULL,NULL,'Suspendisse potenti.');

INSERT INTO assignment (assignment_id, staff_id, subject_id, set_date, due_date, assignment_description, is_assignment_assessed, assignment_weight)
VALUES
    (1,1,1,2024-11-26 13:00:00,2024-11-26 14:00:00,'Sed ac lobortis metus.',TRUE,90),
    (2,2,43,2024-11-26 13:00:00,2024-11-26 14:00:00,'In ut posuere mauris, non consectetur sem.',TRUE,30,),
    (3,2,22,2024-11-27 13:00:00,2024-11-30 13:00:00,'Sed sed volutpat leo.',FALSE,NULL),
    (4,4,33,2024-11-28 13:00:00,2024-11-30 13:00:00,'Curabitur tristique, nunc ut porttitor ultricies, leo augue rutrum enim, eu convallis sapien purus eget nisi.',FALSE,NULL),
    (5,7,31,2024-11-28 13:45:00,2024-11-30 13:00:00,'Donec sed auctor ex, consectetur tempus magna.',FALSE,NULL),
    (6,9,32,2024-11-28 13:45:00,2024-11-30 13:00:00,'Ut pharetra ligula leo, non ullamcorper orci blandit eu.',FALSE,NULL),
    (7,22,32,2024-11-28 13:45:00,2024-11-30 13:00:00,'Suspendisse pharetra, est ut pellentesque iaculis, massa metus ullamcorper nibh, et efficitur lectus tellus at ipsum.',FALSE,NULL),
    (8,11,20,2024-11-28 13:45:00,2024-11-30 13:00:00,'Nam vel ornare dui, ac lacinia dolor.',TRUE,33.33),
    (9,40,1,2024-11-28 14:45:00,2024-11-30 13:00:00,'Nam ut nulla consectetur justo auctor fermentum id eget diam.',TRUE,70),
    (10,27,2,2024-11-29 14:45:00,2024-12-01 16:00:00,'Integer varius vestibulum mi vitae scelerisque.',TRUE,12.5),
    (11,23,4,2024-11-29 15:45:00,2024-12-01 16:00:00,'Nunc maximus dignissim odio nec iaculis.',FALSE,NULL),
    (12,22,7,2024-11-29 17:45:00,2024-12-05 16:00:00,'Phasellus gravida ultricies dui, ac consequat erat consectetur nec.',FALSE,NULL),
    (13,20,8,2024-11-29 17:45:00,2024-12-05 16:00:00,'Ut eget justo erat',FALSE,NULL),
    (14,33,9,2024-11-29 17:45:00,2024-12-07 16:00:00,' In nisl elit,',TRUE,12.5),
    (15,44,11,2024-11-29 17:45:00,2024-12-11 18:00:00,'consequat ac vehicula quis, volutpat vitae urna.',TRUE,12.5),
    (16,36,12,2024-11-30 18:00:00,2024-12-12 13:00:00,' Vivamus consequat semper faucibus. Vivamus fermentum dui luctus neque tempus convallis.',TRUE,60),
    (17,12,15,2024-11-30 13:00:00,2024-12-14 13:00:00,' Nam posuere dignissim nibh',TRUE,10),
    (18,11,17,2024-12-02 13:00:00,2024-12-15 13:00:00,'Suspendisse eu tincidunt metus, sit amet pharetra neque.',FALSE,NULL),
    (19,9,19,2024-12-02 13:00:00,2024-12-15 13:00:00,'Suspendisse eu tincidunt metus, sit amet pharetra neque.',FALSE,NULL),
    (20,8,19,2024-12-04 13:30:00,2024-12-17 13:00:00,'Fusce eu tincidunt nibh.',TRUE,62.5);

INSERT INTO student_assignment (student_id, assignment_id, submission_datetime, assignment_percentage)
VALUES
    (1,20,2024-12-17 13:00:00,50.5),
    (1,10,2024-12-01 15:00:00,50),
    (2,10,2024-12-01 12:00:00,80),
    (3,11,2024-12-01 10:00:00,84),
    (7,13,2024-12-01 16:00:00,82),
    (8,12,2024-12-01 16:00:00,30),
    (8,9,2024-12-01 15:00:00,100),
    (10,4,2024-12-02 12:00:00,90.04),
    (12,3,2024-11-28 15:30:00,60),
    (14,3,2024-11-28 16:00:00,65.5),
    (15,3,2024-11-28 16:00:00,45.9),
    (16,2,2024-11-28 16:30:00,62),
    (17,1,2024-11-28 16:00:00,83.2),
    (17,15,2024-12-01 16:00:00,88.3),
    (19,15,2024-12-01 16:20:00,91.1),
    (23,18,2024-12-01 16:00:00,90),
    (27,19,2024-12-01 16:15:00,100),
    (28,12,2024-12-01 16:00:00,0),
    (29,11,2024-12-01 16:08:00,70),
    (20,5,2024-11-28 16:11:00,68),

INSERT INTO student_payment (payment_id, enrolment_id, payment_status, payment_amount, payment_datetime)
VALUES
    (1,1,'Fully paid',5000,2024-12-17 14:00:00),
    (2,3,'Fully paid',500,2024-12-10 11:00:00),
    (3,5,'Partially paid',200,2023-12-12 09:00:00),
    (4,6,'Failed transaction',0,2023-12-15 06:00:00),
    (5,7,'Fully paid',7000,2022-12-30 13:00:00),
    (6,8,'Fully paid',7000,2024-12-18 13:00:00),
    (7,9,'Fully paid',100,2024-10-11 17:00:00),
    (8,10,'Fully paid',100,2024-09-03 16:00:00),
    (9,12,'Fully paid',100,2023-12-20 12:00:00),
    (10,13,'Partially paid',4000,2023-12-18 12:00:00),
    (11,14,'Partially paid',4000,2024-02-04 11:00:00),
    (12,15,'Partially paid',4000,2024-07-17 16:00:00),
    (13,16,'Fully paid',7000,2024-11-22 16:00:00),
    (14,17,'Fully paid',7000,2024-12-17 12:00:00),
    (15,18,'Fully paid',7000,2024-12-17 19:00:00),
    (16,20,'Fully paid',7000,2024-05-09 15:00:00),
    (17,24,'Fully paid',8000,2024-01-01 15:00:00),
    (18,27,'Failed transaction',0,2024-06-19 17:00:00),
    (19,28,'Partially paid',400,2024-06-03 09:00:00),
    (20,30,'Partially paid',400,2024-12-17 12:00:00);