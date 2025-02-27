--创建表时表的命名不用“”；整型INTEGER；表约束主键外键；列约束放在哪--
CREATE TABLE passengers (
	"id" INTEGER,
	"first name" TEXT,
	"last name" TEXT,
	"age" INTEGER,
	PRIMARY KEY("id")

);

CREATE TABLE check_ins (
	"passenger_id" INTEGER,
	"flight_id" INTEGER,
	"date" NUMERIC,
	"flight" TEXT,
	FOREIGN KEY("passenger_id") REFERENCES "passengers"("id"),
	FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE airlines (
	"flight_id" INTEGER,
	"name" TEXT NOT NULL,
	"concourse" TEXT CHECK("concourse" IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),
	FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE flights (
	"id" TEXT,
	"airline" TEXT,
	"depart_code" TEXT,
	"head_code" TEXT,
	"depart_date" NUMERIC,
	"head_date" NUMERIC,
	PRIMARY KEY("id")
);

