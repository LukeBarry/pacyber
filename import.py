import csv
import psycopg2
import re

tables = {
"student_detail": ("student_detail.csv", "PAsecure"),
"course_grades" : ("course_grades.csv", "StateID, SchoolYear, CourseName"),
"pvaas" : ("pvaas.csv", "PAsecureID, subject, PredictingResultsFor"),
"pssa" : ("pssa.csv", "PAsecureID, Subject, TestedYear"),
"keystone" : ("keystone.csv", "PAsecureID, TestName, AdminYear, AdminDate"),
"first_in_math" : ("first_in_math.csv", "StateID"),
"study_island_english" : ("study_island_english.csv", "SISPrimaryKey, subject, length"),
"study_island_math" : ("study_island_math.csv", "SISPrimaryKey, subject, length"),
"benchmarks_3rd_8th" : ("Benchmarks_3rd-8th.csv", "AlternateID, subject"),
"benchmarks_alg" : ("Benchmarks_alg.csv", "AlternateID, subject"),
"benchmarks_bio" : ("benchmarks_bio.csv", "AlternateID, subject"),
"benchmarks_lit" : ("benchmarks_lit.csv", "AlternateID, course"),
}

data_types = {
    "StateID": "bigint",
    "AdminYear": "integer",
    "Age": "integer",
    # can add more here if you want them to be integers (or other types)
}

#establish connection database
conn = psycopg2.connect("")
# connect the tables:   psql <schema.sql

# loading up to read the csv files, open the files and say read this as a csv and return dictionaries
for table, (filename, primary_key) in tables.items():
    with open(filename) as f, conn, conn.cursor() as cur:
        print("Processing", filename, "...")
        f = csv.DictReader(f)
        cur.execute("drop table "+table)
        create = "create table " + table + " ("
        cols, fields = [], []
        for fld in f.fieldnames:
            col = re.sub("[- /.()&,]", "", fld)
            if col in cols or not col: continue # Hated data's gonna hate
            if col[0].isdigit(): col = "_" + col
            create += "%s %s not null," % (col, data_types.get(col, "text"))
            cols.append(col); fields.append(fld)
        create += "primary key (" + primary_key + "))"
        cur.execute(create)
        stmt = "insert into %s (%s) values (%%s%s)" % (table, ",".join(cols), ",%s" * (len(cols)-1)) 
        for row in f: cur.execute(stmt, [row[fld] for fld in fields])
   
# read the sql tables
# http://pandas.pydata.org/pandas-docs/stable/generated/pandas.read_sql.html

#put the cleaning and wranlging in a separate file

# I could add a year column to all the csvs or eventually i could add a year directory and link to each year

select * from student_detail join course_grades on student_detail.PAsecure = course_grades.StateID;

# stick with postgresql and learn general database postgresql instead of specific to one software