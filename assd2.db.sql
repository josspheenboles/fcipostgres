BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "department" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "employee" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL,
	"salary"	REAL NOT NULL,
	"department_id"	INTEGER,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("department_id") REFERENCES "department"("id")
);
INSERT INTO "department" VALUES (1,'Engineering');
INSERT INTO "department" VALUES (2,'Sales');
INSERT INTO "department" VALUES (3,'Marketing');
INSERT INTO "department" VALUES (4,'Executive');
INSERT INTO "employee" VALUES (101,'Alice',90000.0,1);
INSERT INTO "employee" VALUES (102,'Bob',80000.0,1);
INSERT INTO "employee" VALUES (103,'Charlie',60000.0,2);
INSERT INTO "employee" VALUES (104,'Diana',70000.0,2);
INSERT INTO "employee" VALUES (105,'Evan',50000.0,NULL);
COMMIT;
