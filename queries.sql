CREATE TABLE ROUTE (
ROUTE_ID INTEGER PRIMARY KEY AUTOINCREMENT);

INSERT INTO ROUTE VALUES
(1);
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);
-- (13),
-- (14),
-- (15);

CREATE TABLE STOP (
STOP_ID INTEGER PRIMARY KEY AUTOINCREMENT,
STOP_NAME STRING,
ROUTE_ID INTEGER,
FOREIGN KEY (ROUTE_ID) REFERENCES ROUTE (ROUTE_ID));

CREATE TABLE TIMETABLE (
TIMETABLE_ID INTEGER PRIMARY KEY AUTOINCREMENT,
TIME STRING,
ROUTE_ID INTEGER,
FOREIGN KEY (ROUTE_ID) REFERENCES ROUTE (ROUTE_ID));

INSERT INTO STOP VALUES
(1,'Lidzbark Warmiński', 1),
(2, 'Smolajny', 1),
(3, 'Dobre Miasto', 1),
(4, 'Olsztyn', 1),
(5, 'Lidzbark Warmiński', 2),
(6, 'Smolajny', 2),
(7, 'Dobre Miasto', 2),
(8, 'Lidzbark Warmiński' 3),
(9, 'Smolajny', 3),
(10, 'Smolajny', 4),
(11, 'Dobre Miasto', 4),
(12, 'Smolajny', 5),
(13, 'Olsztyn', 5),
(14, 'Dobre Miasto', 6),
(15, 'Olsztyn' 6);

INSERT INTO TIMETABLE VALUES
(1, '8:00', 1),
(2, '12:00', 1),
(3, '15:00', 1),
(4, '19:00', 1),
(5, '8:00', 2),
(6, '12:00', 2),
(7, '15:00', 2),
(8, '19:00', 2),
(9, '8:00', 3),
(10, '12:00', 3),
(11, '15:00', 3),
(12, '19:00', 3),
(13, '8:20', 4),
(14, '12:20', 4),
(15, '15:20', 4),
(16, '19:20', 4),
(17, '8:20', 5),
(18, '12:20', 5),
(19, '15:20', 5),
(20, '19:20', 5),
(21, '8:30', 6),
(22, '12:30', 6),
(23, '15:30', 6),
(24, '19:30', 6);
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
-- (, '', ),
