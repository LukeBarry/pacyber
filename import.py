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

# loading up to read the csv files, open the files and say read this a s a csv and return dictionaries
for table, filename in tables.items():
    with open(filename) as f:
    f = csv.DictReader(f)
    
    #look at f.fieldnames which will give me a list of columns.  this should do all the importing work.  connect to postgres
    #and then build this statement once and run it lots of times
    #makle import.py connect to postgres. i'll need with conn, conn.cursor() as cur:
    fields = f.fieldnames
    cols = [fld.replace(" ", "") for fld in fields]
    stmt = "insert into %s (%s) values (?%s)" % (table, ",".join(cols), ",?" * (len(cols)-1)) 
    for row in f: cur.execute(stmt, [row[fld] for fld in fields])
    
    