-- safe option - checking foreign keys
PRAGMA foreign_keys=1;

CREATE TABLE STOP (
ID INTEGER PRIMARY KEY,
STOP_NAME TEXT NOT NULL,
ROUTE_ID INTEGER NOT NULL-- if two stops have the same number, they are on the same route
);

CREATE TABLE TIMETABLE (
ID INTEGER PRIMARY KEY, 
TIME TEXT NOT NULL,
STOP_ID INTEGER NOT NULL,
FOREIGN KEY (STOP_ID) REFERENCES STOP (ID)
);


INSERT INTO STOP VALUES
--towards Olsztyn
(1,'Lidzbark Warmiński', 1),
(2, 'Smolajny', 1),
(3, 'Dobre Miasto', 1),
(4, 'Olsztyn', 1),
(5, 'Lidzbark Warmiński', 2),
(6, 'Smolajny', 2),
(7, 'Dobre Miasto', 2),
(8, 'Lidzbark Warmiński', 3),
(9, 'Smolajny', 3),
(10, 'Smolajny', 4),
(11, 'Dobre Miasto', 4),
(12, 'Smolajny', 5),
(13, 'Olsztyn', 5),
(14, 'Dobre Miasto', 6),
(15, 'Olsztyn', 6),
(16, 'Smolajny', 7),
(17, 'Dobre Miasto', 7),
(18, 'Olsztyn', 7);

--towards LW
-- (19, 'Olsztyn', 8),
-- (20, 'Dobre Miasto', 8),
-- (21, 'Smolajny', 8),
-- (22, 'Lidzbark Warmiński', 8),
-- (23, 'Dobre Miasto', 9),
-- (24, 'Smolajny', 9),
-- (25, 'Lidzbark Warmiński', 9),
-- (26, 'Smolajny', 10),
-- (27, 'Lidzbark Warmiński', 10),
-- (28, 'Dobre Miasto', 11),
-- (29, 'Smolajny', 11),
-- (30, 'Olsztyn', 12),
-- (31, 'Smolajny', 12),
-- (32, 'Olsztyn', 13),
-- (33, 'Dobre Miasto', 13),
-- (34, 'Olsztyn', 14),
-- (35, 'Dobre Miasto', 14),
-- (36, 'Smolajny', 14);


INSERT INTO TIMETABLE VALUES
--towards Olsztyn
(1, '08:00', 1),
(2, '12:00', 1),
(3, '15:00', 1),
(4, '19:00', 1),
(5, '08:00', 2),
(6, '12:00', 2),
(7, '15:00', 2),
(8, '19:00', 2),
(9, '08:00', 3),
(10, '12:00', 3),
(11, '15:00', 3),
(12, '19:00', 3),
(13, '08:20', 4),
(14, '12:20', 4),
(15, '15:20', 4),
(16, '19:20', 4),
(17, '08:20', 5),
(18, '12:20', 5),
(19, '15:20', 5),
(20, '19:20', 5),
(21, '08:30', 6),
(22, '12:30', 6),
(23, '15:30', 6),
(24, '19:30', 6),
(25, '08:20', 7),
(26, '12:20', 7),
(27, '15:20', 7),
(28, '19:20', 7);

--towards LW
-- (29, '09:00', 8),
-- (30, '13:00', 8),
-- (31, '17:00', 8),
-- (32, '21:00', 8),
-- (33, '09:30', 9),
-- (34, '13:30', 9),
-- (35, '17:30', 9),
-- (36, '21:30', 9),
-- (37, '09:40', 10),
-- (38, '13:40', 10),
-- (39, '17:40', 10),
-- (40, '21:40', 10),
-- (41, '09:30', 11),
-- (42, '13:40', 11),
-- (43, '17:40', 11),
-- (44, '21:40', 11),
-- (45, '09:40', 12),
-- (46, '13:40', 12),
-- (47, '17:40', 12),
-- (48, '21:40', 12),
-- (49, '09:30', 13),
-- (50, '13:30', 13),
-- (51, '17:30', 13),
-- (52, '21:40', 13),
-- (53, '09:00', 14),
-- (54, '13:00', 14),
-- (55, '17:00', 14),
-- (56, '21:00', 14);


