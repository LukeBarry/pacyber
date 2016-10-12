import pandas as pd


student_detail = pd.read_csv("C:\Users\lbarry\Desktop\database\student_detail.csv")
course_grades = pd.read_csv("C:\Users\lbarry\Desktop\database\course_grades.csv")

student_detail_grades = pd.merge(student_detail, course_grades,how='inner',left_on='PAsecure',right_on='StateID')

print(student_detail_grades.columns)

