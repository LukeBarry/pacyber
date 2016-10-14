import csv
import psycopg2
import re

tables = {
"student_detail": "student_detail.csv",
"course_grades" : "course_grades.csv",
"pvaas" : "pvaas.csv",
"pssa" : "pssa.csv",
"keystone" : "keystone.csv",
"first_in_math" : "first_in_math.csv",
"study_island_english" : "study_island_english.csv",
"study_island_math" : "study_island_math.csv",
"benchmarks_3rd_8th" : "benchmarks_3rd_8th.csv",
"benchmarks_alg" : "benchmarks_alg.csv",
"benchmarks_bio" : "benchmarks_bio.csv",
"benchmarks_lit" : "benchmarks_lit.csv",
}

#establish connection database
conn = psycopg2.connect("")
# connect the tables:   psql <schema.sql


# loading up to read the csv files, open the files and say read this as a csv and return dictionaries
for table, filename in tables.items():
    with open(filename) as f, conn, conn.cursor() as cur:
        f = csv.DictReader(f)
        cur.execute("select * from information_schema.columns where table_name=%s", (table,))
        avail_cols = {row[0] for row in cur}
        fields, cols = zip(*[(csv, sql) for csv, sql in ((fld, re.sub("[- /.]", "", fld)) for fld in f.fieldnames) if sql.lower() in avail_cols])
        stmt = "insert into %s (%s) values (%%s%s)" % (table, ",".join(cols), ",%s" * (len(cols)-1)) 
        for row in f: cur.execute(stmt, [row[fld] for fld in fields])
   

    