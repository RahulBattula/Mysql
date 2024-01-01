-- Command to clear console screen in mysql
system cls;

-- Query to insert data from a CSV file into Mysql table
LOAD DATA LOCAL INFILE "R:/IT_A_sec_list.csv"
INTO TABLE a_section
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(roll_num, first_name, last_name, section, gender);

-- Query to display COMMON columns from any two table that are located in same database
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'world' AND TABLE_NAME = 'city' AND COLUMN_NAME IN (
    SELECT COLUMN_NAME
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'world' AND TABLE_NAME = 'country'
);

