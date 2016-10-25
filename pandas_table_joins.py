import pandas as pd

student_detail = pd.read_csv("C:\Users\lbarry\Desktop\pandas\student_detail.csv") #db1
course_grades = pd.read_csv("C:\Users\lbarry\Desktop\pandas\course_grades.csv") #db2
benchmarks_3rd_8th = pd.read_csv("C:\Users\lbarry\Desktop\pandas\benchmarks_3rd-8th.csv") #db3
benchmarks_alg = pd.read_csv("C:\Users\lbarry\Desktop\pandas\benchmarks_alg.csv") #db4
benchmarks_bio = pd.read_csv("C:\Users\lbarry\Desktop\pandas\benchmarks_bio.csv") #db5
benchmarks_lit = pd.read_csv("C:\Users\lbarry\Desktop\pandas\benchmarks_lit.csv") #db6
first_in_math = pd.read_csv("C:\Users\lbarry\Desktop\pandas\first_in_math.csv") #db7
keystone = pd.read_csv("C:\Users\lbarry\Desktop\pandas\keystone.csv") #db8
pssa = pd.read_csv("C:\Users\lbarry\Desktop\pandas\pssa.csv") #db9
pvaas = pd.read_csv("C:\Users\lbarry\Desktop\pandas\pvaas.csv") #db10
study_island_english = pd.read_csv("C:\Users\lbarry\Desktop\pandas\study_island_english.csv") #db11
study_island_math = pd.read_csv("C:\Users\lbarry\Desktop\pandas\study_island_math.csv") #db12

db1 = student_detail
db2 = pd.merge(db1, course_grades, how='inner', left_on='PAsecure', right_on='StateID')
db3 = pd.merge(db2, benchmarks_3rd_8th, how='inner', left_on='PAsecure', right_on='StateID')
db4 = pd.merge(db3, benchmarks_alg, how='inner', left_on='PAsecure', right_on='StateID')
db5 = pd.merge(db4, benchmarks_bio, how='inner', left_on='PAsecure', right_on='StateID')
db6 = pd.merge(db5, benchmarks_lit, how='inner', left_on='PAsecure', right_on='StateID')
db7 = pd.merge(db6, first_in_math, how='inner', left_on='PAsecure', right_on='StateID')
db8 = pd.merge(db7, keystone, how='inner', left_on='PAsecure', right_on='StateID')
db9 = pd.merge(db8, pssa, how='inner', left_on='PAsecure', right_on='StateID')
db10 = pd.merge(db9, pvaas, how='inner', left_on='PAsecure', right_on='StateID')
db11 = pd.merge(db10, study_island_english, how='inner', left_on='PAsecure', right_on='StateID')
db12 = pd.merge(db11, study_island_math, how='inner', left_on='PAsecure', right_on='StateID')

print(db1)