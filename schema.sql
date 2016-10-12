CREATE TABLE student_detail (
StateID integer primary key,
AlternateID text not null,
EntryDate text not null,
StudentID text not null,
FullName text not null,
StudentEmail text not null,
CurrentGradeLevel integer not null,
Gender text not null,
Birthdate text not null,
Age integer not null,
Ethnicity text not null,
PrimaryAddress1 text not null,
PrimaryAddress2 text not null,
PrimaryCity text not null,
PrimaryState text not null,
PrimaryZip text not null,
Phone text not null,
AlternatePhone text not null,
County text not null,
SchoolDistrictIDcode integer not null,
SchoolDistrict text not null,
GuardianName text not null,
GuardianPhone text not null,
GuardianAlternatePhone text not null,
PACyberParentEmail text not null,
GuardianPrimaryEmail text not null,
FamilyExternalEmail text not null,
GuardianRelationship text not null,
Academy text not null,
AcademicAdvisor text not null,
AcademicAdvisorSpecialEd text not null,
IEP_Writer text not null
);


CREATE TABLE course_grades (
StateID integer not null,
SchoolYear integer not null,
CourseName text not null,
primary key(StateID, SchoolYear, CourseName),
StudentStatus text not null,
OfficialEnrollmentDate text not null,
AlternateID text not null,
LastName text not null,
FirstName text not null,
gradelevel text not null,
GradeLevelStartDate text not null,
TeachersName text not null,
TeachersEmail text not null,
StudentsCourseStartDate text not null,
StudentsCourseScheduledDate text not null,
Department text not null,
SectionName text not null,
SectionCode text not null,
CourseEnrollmentStatus text not null,
CurrentAssignment integer not null,
TotalAssignments integer not null,
CreditsEarned integer not null,
CurrentGrade integer not null,
FinalGrade text not null,
GradingScaleLetter text not null,
Term1Grade integer not null,
Term2Grade integer not null,
Term3Grade integer not null,
Term4Grade integer not null,
AcademicAdvisor text not null,
AcademicAdvisorSpecialEd text not null,
IEP_Writer text not null

);


CREATE TABLE pvaas (
PAsecureID integer not null,
subject text not null,
PredictingResultsFor text not null,
primary key(PAsecureID, subject, PredictingResultsFor),
Student text not null,
Sex text not null,
Race text not null,
Grade integer not null,
ED text not null,
NonED text not null,
Title1 text not null,
Title3 text not null,
LEP text not null,
SPE text not null,
NonSPE text not null,
EFYr text not null,
NEFYr text not null,
Mig text not null,
ELL1Yr text not null,
ForeignEx text not null,
GIEP text not null,
SP504 text not null,
HUS text not null,
NonHUS text not null,
ProficientAchievementProbability integer not null,
GradeLevelProjection integer not null
);


CREATE TABLE pssa (
Subject text not null,
PASecureID integer not null,
TestedYear integer not null,
primary key(PAsecureID, Subject, TestedYear),
LocalStudentID text not null,
StudentLastName text not null,
StudentFirstName text not null,
Birthdate text not null,
Grade integer not null,
PASARecord text not null,
EthnicityCode integer not null,
IEPnotgifted text not null,
IEPExited text not null,
HistoricallyUnderperformingSubgroup text not null,
EconomicallyDisadvantaged text not null,
ScaledScore integer not null,
PerformanceLevelCode integer not null,
PerformanceLevelName text not null,
TotalRawScore integer not null,
MultipleChoiceRawScore integer not null,
OpenEndedRawScore integer not null,
ReportingCategory1RawScore integer not null,
Anchor1_1 integer not null,
Anchor1_2 integer not null,
Anchor1_3 integer not null,
ReportingCategory2RawScore integer not null,
Anchor2_1 integer not null,
Anchor2_2 integer not null,
Anchor2_3 integer not null,
Anchor2_4 integer not null,
ReportingCategory3RawScore integer not null,
Anchor3_1 integer not null,
Anchor3_2 integer not null,
Anchor3_3 integer not null,
ReportingCategory4RawScore integer not null,
Anchor4_1 integer not null,
Anchor4_2 integer not null,
Anchor4_3 integer not null,
ReportingCategory5RawScore integer not null,
Anchor5_1 integer not null,
Anchor5_2 integer not null,
Anchor5_3 integer not null,
ReportingCategory6RawScore integer not null,
Anchor6_1 integer not null,
Anchor6_2 integer not null,
ReportingCategory7RawScore integer not null,
Anchor7_1 integer not null,
Anchor7_2 integer not null,
Anchor7_3 integer not null,
Anchor7_4 integer not null,
ReportingCategory8RawScore integer not null,
Anchor8_1 integer not null,
Anchor8_2 integer not null,
Anchor8_3 integer not null,
Anchor8_4 integer not null,
ReportingCategory9RawScore integer not null,
Anchor9_1 integer not null,
Anchor9_2 integer not null,
Anchor9_3 integer not null,
Anchor9_4 integer not null,
ReportingCategory10RawScore integer not null,
Anchor10_1 integer not null,
Anchor10_2 integer not null,
Anchor10_3 integer not null,
ReportingCategory1StrengthProfile text not null,
ReportingCategory2StrengthProfile text not null,
ReportingCategory3StrengthProfile text not null,
ReportingCategory4StrengthProfile text not null,
ReportingCategory5StrengthProfile text not null,
ReportingCategory6StrengthProfile text not null,
ReportingCategory7StrengthProfile text not null,
ReportingCategory8StrengthProfile text not null,
ReportingCategory9StrengthProfile text not null,
ReportingCategory10StrengthProfile text not null,
Gender text not null,
TitleI text not null,
EntryDate text not null,
EnrolledafterOct1 text not null,
PAresidentafterOct1 text not null,
EnrolafterOct1onorbeforeOct1 text not null,
EnrolafterOct1onorbeforeOct1Dist text not null
);


CREATE TABLE keystone (
TestName text not null,
PAsecureID integer not null,
AdminYear integer not null,
AdminDate text not null,
primary key(PAsecureID, TestName, AdminYear, AdminDate),
StudentLastName text not null,
StudentFirstName text not null,
Birthdate text not null,
Grade integer not null,
Module1Result integer not null,
Module1ScaledScore integer not null,
Module1RawScore integer not null,
Module1Anchor1RawScore integer not null,
Module1Anchor2RawScore integer not null,
Module1Anchor3RawScore integer not null,
Module1Anchor4RawScore integer not null,
Module2Result integer not null,
Module2ScaledScore integer not null,
Module2RawScore integer not null,
Module2Anchor1RawScore integer not null,
Module2Anchor2RawScore integer not null,
Module2Anchor3RawScore integer not null,
Module2Anchor4RawScore integer not null,
EnrolledCurrently text not null,
FirstTimeOrReTest integer not null,
AdminScaleScore integer not null,
AdminScaleScoreStandardErrorofMeasurement integer not null,
AdminRawScore integer not null,
AdminMultipleChoiceTotalRawScore integer not null,
AdminConstructedResponseTotalRawScore integer not null,
AdminPerformanceLevelCode integer not null,
AdminPerformanceLevelName text not null,
Module1BestScoreResult integer not null,
Module1BestScaleScore integer not null,
Module1BestScoreTestDate text not null,
Module2BestScoreResult integer not null,
Module2BestScaleScore integer not null,
Module2BestScoreTestDate text not null,
BestScaleScore integer not null,
BestPerformanceLevelCode integer not null,
BestPerformanceLevelName text not null,
TestEvent1Module1Result integer not null,
TestEvent1Module1ScaleScore integer not null,
TestEvent1Module1TestDate text not null,
TestEvent2Module1Result integer not null,
TestEvent2Module1ScaleScore integer not null,
TestEvent2Module1TestDate text not null,
TestEvent3Module1Result integer not null,
TestEvent3Module1ScaleScore integer not null,
TestEvent3Module1TestDate text not null,
TestEvent1Module2Result integer not null,
TestEvent1Module2ScaleScore integer not null,
TestEvent1Module2TestDate text not null,
TestEvent2Module2Result integer not null,
TestEvent2Module2ScaleScore integer not null,
TestEvent2Module2TestDate text not null,
TestEvent3Module2Result integer not null,
TestEvent3Module2ScaleScore integer not null,
TestEvent3Module2TestDate text not null,
Gender text not null,
EthnicityCode integer not null,
IEPnotgifted text not null,
IEPExited text not null,
TitleI text not null,
EconomicallyDisadvantaged text not null,
HistoricallyUnderperformingSubgroup text not null,
EnrolledafterOct1Schl text not null,
EnrolledafterOct1Dist text not null,
PAresidentafterOct1 text not null,
EnrolledafterOct1onorbeforeOct1Sch text not null,
EnrolledafterOct1onorbeforeOct1Dist text not null
);


CREATE TABLE first_in_math (
StateID integer primary key,
AlternateID text not null,
LastName text not null,
FirstName text not null,
Grade integer not null,
Last_login text not null,
Sticker_Count integer not null
);


CREATE TABLE study_island_english (
SISPrimaryKey text not null,
subject text not null,
length text not null,
primary key(SISPrimaryKey, subject, length),
LiteratureText integer not null,
LiteratureTextScore integer not null,
Student text not null,
InformationalText integer not null,
InformationalTextScore integer not null,
Writing integer not null,
WritingScore integer not null,
Language integer not null,
LanguageScore integer not null,
ALLLISTEDTOPICS integer not null,
ALLLISTEDTOPICSScore integer not null
);


CREATE TABLE study_island_math (
SISPrimaryKey text not null,
subject text not null,
length text not null,
primary key(SISPrimaryKey, subject, length),
Student text not null,
DiagnosticTest integer not null,
DiagnosticTestScore integer not null,
ReportingCategory1 integer not null,
ReportingCategory1Score integer not null,
ReportingCategory2 integer not null,
ReportingCategory2Score integer not null,
ReportingCategory3 integer not null,
ReportingCategory3Score integer not null,
ReportingCategory4 integer not null,
ReportingCategory4Score integer not null,
ReportingCategory5 integer not null,
ReportingCategory5Score integer not null,
ALLLISTEDTOPICS integer not null,
ALLLISTEDTOPICSScore integer not null
);


CREATE TABLE benchmarks_3rd_8th (
AlternateID text not null,
subject text not null,
primary key(AlternateID, subject),
LastName text not null,
FirstName text not null,
Benchmark1minutes integer not null,
ReportingCategory1 integer not null,
ReportingCategory2 integer not null,
ReportingCategory3 integer not null,
ReportingCategory4 integer not null,
ReportingCategory5 integer not null,
Benchmark1total integer not null,
Benchmark1PerformanceLevel text not null,
Benchmark2minutes integer not null,
bm2ReportingCategory1 integer not null,
bm2ReportingCategory2 integer not null,
bm2ReportingCategory3 integer not null,
bm2ReportingCategory4 integer not null,
bm2ReportingCategory5 integer not null,
Benchmark2total integer not null,
Benchmark2PerformanceLevel text not null,
Benchmark3minutes integer not null,
bm3ReportingCategory1 integer not null,
bm3ReportingCategory2 integer not null,
bm3ReportingCategory3 integer not null,
bm3ReportingCategory4 integer not null,
bm3ReportingCategory5 integer not null,
Benchmark3total integer not null,
Benchmark3PerformanceLevel text not null
);


CREATE TABLE benchmarks_alg (
AlternateID text not null,
subject text not null,
primary key(AlternateID, subject),
LastName text not null,
FirstName text not null,
Benchmark1Minutes integer not null,
OperationswithRealNumbersandExpressions integer not null,
LinearEquations integer not null,
LinearInequalities integer not null,
Functions integer not null,
CoordinateGeometry integer not null,
DataAnalysis integer not null,
Total integer not null,
PL text not null,
Benchmark2Minutes integer not null,
bm2OperationswithRealNumbersandExpressions integer not null,
bm2LinearEquations integer not null,
bm2LinearInequalities integer not null,
bm2Functions integer not null,
bm2CoordinateGeometry integer not null,
bm2DataAnalysis integer not null,
bm2Total integer not null,
bm2PL text not null,
Benchmark3Minutes integer not null,
bm3OperationswithRealNumbersandExpressions integer not null,
bm3LinearEquations integer not null,
bm3LinearInequalities integer not null,
bm3Functions integer not null,
bm3CoordinateGeometry integer not null,
bm3DataAnalysis integer not null,
bm3Total integer not null,
bm3PL text not null
);


CREATE TABLE benchmarks_bio (
AlternateID text not null,
subject text not null,
primary key(AlternateID, subject),
LastName text not null,
FirstName text not null,
Benchmark1Minutes integer not null,
BIOA1BasicBiologicalPrinciples integer not null,
BIOA2TheChemicalBasisforLife integer not null,
BIOA3Bioenergetics integer not null,
BIOA4HomeostasisandTransport integer not null,
BIOB1CellGrowthandReproduction integer not null,
BIOB2Genetics integer not null,
BIOB3TheoryofEvolution integer not null,
BIOB4Ecology integer not null,
Total integer not null,
Grade text not null,
Benchmark2Minutes integer not null,
bm2BIOA1BasicBiologicalPrinciples integer not null,
bm2BIOA2TheChemicalBasisforLife integer not null,
bm2BIOA3Bioenergetics integer not null,
bm2BIOA4HomeostasisandTransport integer not null,
bm2BIOB1CellGrowthandReproduction integer not null,
bm2BIOB2Genetics integer not null,
bm2BIOB3TheoryofEvolution integer not null,
bm2BIOB4Ecology integer not null,
bm2Total integer not null,
bm2Grade text not null,
Benchmark3Minutes integer not null,
bm3BIOA1BasicBiologicalPrinciples integer not null,
bm3BIOA2TheChemicalBasisforLife integer not null,
bm3BIOA3Bioenergetics integer not null,
bm3BIOB4HomeostasisandTransport integer not null,
bm3BIOB1CellGrowthandReproduction integer not null,
bm3BIOB2Genetics integer not null,
bm3BIOB3TheoryofEvolution integer not null,
bm3BIOB4Ecology integer not null,
bm3Total integer not null,
bm3Grade text not null
);


CREATE TABLE benchmarks_lit (
AlternateID text not null,
course text not null,
primary key(AlternateID, course),
LastName text not null,
FirstName text not null,
Benchmark1Minutes integer not null,
FictionLiterature integer not null,
NonfictionLiterature integer not null,
Total integer not null,
PL text not null,
Benchmark2Minutes integer not null,
bm2FictionLiterature integer not null,
bm2NonfictionLiterature integer not null,
bm2Total integer not null,
bm2PL text not null,
Benchmark3Minutes integer not null,
bm3FictionLiterature integer not null,
bm3NonfictionLiterature integer not null,
bm3Total integer not null,
bm3PL text not null
);



























































