/* given dataset (1/3)*/
data OBJECTIVE_QUESTIONS;
  infile datalines dsd truncover;
  input Objective:$5. Objective_Questions:BEST.;
  format Objective_Questions BEST.;
  label Objective="Objective" Objective_Questions="Questions Per Exam";
datalines;
01.01,3
01.02,3
02.01,4
02.02,4
02.03,4
02.04,3
03.01,3
03.02,4
03.03,3
03.04,3
04.01,2
04.02,3
04.03,3
04.04,2
05.01,3
05.02,3
;

/* given dataset (2/3)*/
data QUESTION_BANK;
  infile datalines dsd truncover;
  input Question:$15. Frenemy_Group:BEST. Topic:$2. Objective:$5. Correct:BEST.;
  format Frenemy_Group BEST. Correct BEST.;
  label Question="Question" Frenemy_Group="Frenemy Group" Topic="Topic" Objective="Objective" Correct="% Correctly Answered";
datalines;
ITEM_01.01.01,,01,01.01,0.822
ITEM_01.01.02,1,01,01.01,0.723
ITEM_01.01.03,1,01,01.01,0.872
ITEM_01.01.04,1,01,01.01,0.743
ITEM_01.01.06,2,01,01.01,0.762
ITEM_01.01.06.1,2,01,01.01,0.73
ITEM_01.01.07,,01,01.01,0.797
ITEM_01.01.08,,01,01.01,0.708
ITEM_01.01.09,,01,01.01,0.757
ITEM_01.01.10,,01,01.01,0.818
ITEM_01.02.01,,01,01.02,0.734
ITEM_01.02.02,,01,01.02,0.517
ITEM_01.02.03,3,01,01.02,0.817
ITEM_01.02.04,3,01,01.02,0.857
ITEM_01.02.05,4,01,01.02,0.686
ITEM_01.02.06,4,01,01.02,0.689
ITEM_01.02.07,5,01,01.02,0.747
ITEM_01.02.08,5,01,01.02,0.751
ITEM_02.01.01,,02,02.01,0.637
ITEM_02.01.02,,02,02.01,0.597
ITEM_02.01.03,,02,02.01,0.709
ITEM_02.01.04,,02,02.01,0.76
ITEM_02.01.05,7,02,02.01,0.816
ITEM_02.01.06,6,02,02.01,0.722
ITEM_02.01.07,7,02,02.01,0.843
ITEM_02.01.08,6,02,02.01,0.742
ITEM_02.01.10,,02,02.01,0.523
ITEM_02.01.11,8,02,02.01,0.829
ITEM_02.01.12,,02,02.01,0.4
ITEM_02.01.13,8,02,02.01,0.814
ITEM_02.01.14,9,02,02.01,0.7
ITEM_02.01.15,9,02,02.01,0.739
ITEM_02.02.01,,02,02.02,0.705
ITEM_02.02.02,,02,02.02,0.809
ITEM_02.02.03,10,02,02.02,0.673
ITEM_02.02.04,10,02,02.02,0.693
ITEM_02.02.05,,02,02.02,0.851
ITEM_02.02.06,,02,02.02,0.766
ITEM_02.02.07,11,02,02.02,0.589
ITEM_02.02.08,11,02,02.02,0.515
ITEM_02.02.09,,02,02.02,0.817
ITEM_02.02.11,12,02,02.02,0.776
ITEM_02.02.10.1,12,02,02.02,0.77
ITEM_02.03.01,13,02,02.03,0.839
ITEM_02.03.02,,02,02.03,0.705
ITEM_02.03.03,13,02,02.03,0.84
ITEM_02.03.04,14,02,02.03,0.742
ITEM_02.03.05,15,02,02.03,0.666
ITEM_02.03.06,14,02,02.03,0.75
ITEM_02.03.07,15,02,02.03,0.674
ITEM_02.03.08,,02,02.03,0.733
ITEM_02.03.10,,02,02.03,0.788
ITEM_02.03.11,,02,02.03,0.716
ITEM_02.03.12,,02,02.03,0.677
ITEM_02.04.01,16,02,02.04,0.686
ITEM_02.04.02,16,02,02.04,0.692
ITEM_02.04.03,,02,02.04,0.543
ITEM_02.04.04,17,02,02.04,0.749
ITEM_02.04.05,,02,02.04,0.554
ITEM_02.04.06,,02,02.04,0.843
ITEM_02.04.07,17,02,02.04,0.758
ITEM_02.04.08,,02,02.04,0.713
ITEM_03.01.01,18,03,03.01,0.761
ITEM_03.01.02,18,03,03.01,0.775
ITEM_03.01.03,19,03,03.01,0.804
ITEM_03.01.04,19,03,03.01,0.798
ITEM_03.01.05,,03,03.01,0.817
ITEM_03.01.06,,03,03.01,0.532
ITEM_03.01.08,20,03,03.01,0.797
ITEM_03.01.09,20,03,03.01,0.783
ITEM_03.02.01,,03,03.02,0.729
ITEM_03.02.03,21,03,03.02,0.63
ITEM_03.02.04,,03,03.02,0.696
ITEM_03.02.05,21,03,03.02,0.626
ITEM_03.02.06,22,03,03.02,0.74
ITEM_03.02.06.1,22,03,03.02,0.814
ITEM_03.02.07,,03,03.02,0.696
ITEM_03.02.08,,03,03.02,0.796
ITEM_03.02.09,,03,03.02,0.701
ITEM_03.02.10,23,03,03.02,0.659
ITEM_03.02.11,23,03,03.02,0.658
ITEM_03.02.11-A,23,03,03.02,0.702
ITEM_03.03.02,24,03,03.03,0.723
ITEM_03.03.03,,03,03.03,0.702
ITEM_03.03.04,24,03,03.03,0.74
ITEM_03.03.05,25,03,03.03,0.625
ITEM_03.03.06,,03,03.03,0.857
ITEM_03.03.07,25,03,03.03,0.612
ITEM_03.03.08,26,03,03.03,0.636
ITEM_03.03.09,,03,03.03,0.533
ITEM_03.03.10,,03,03.03,0.742
ITEM_03.04.01,26,03,03.04,0.647
ITEM_03.04.02,,03,03.04,0.754
ITEM_03.04.03,27,03,03.04,0.7
ITEM_03.04.05,27,03,03.04,0.704
ITEM_03.04.06,,03,03.04,0.609
ITEM_03.04.07,,03,03.04,0.587
ITEM_03.04.10,28,03,03.04,0.6
ITEM_03.04.11,,03,03.04,0.529
ITEM_03.04.12,28,03,03.04,0.626
ITEM_03.04.13,,03,03.04,0.471
ITEM_03.04.14,,03,03.04,0.589
ITEM_03.04.15,,03,03.04,0.844
ITEM_03.04.16,,03,03.04,0.54
ITEM_04.01.01,29,04,04.01,0.779
ITEM_04.01.02,29,04,04.01,0.795
ITEM_04.01.03,30,04,04.01,0.807
ITEM_04.01.04,30,04,04.01,0.829
ITEM_04.01.05,,04,04.01,0.673
ITEM_04.01.07,,04,04.01,0.71
ITEM_04.01.08,,04,04.01,0.627
ITEM_04.02.01,31,04,04.02,0.796
ITEM_04.02.13,,04,04.02,0.704
ITEM_04.02.02,,04,04.02,0.616
ITEM_04.02.03,,04,04.02,0.833
ITEM_04.02.05,31,04,04.02,0.766
ITEM_04.02.08,,04,04.02,0.643
ITEM_04.02.09,,04,04.02,0.6
ITEM_04.02.10,32,04,04.02,0.669
ITEM_04.02.10.1,32,04,04.02,0.67
ITEM_04.02.11,,04,04.02,0.723
ITEM_04.03.01,33,04,04.03,0.543
ITEM_04.03.02,33,04,04.03,0.572
ITEM_04.03.03,,04,04.03,0.708
ITEM_04.03.05,,04,04.03,0.761
ITEM_04.03.06,,04,04.03,0.662
ITEM_04.03.07,,04,04.03,0.783
ITEM_04.03.08,,04,04.03,0.657
ITEM_04.03.09,,04,04.03,0.824
ITEM_04.04.01,,04,04.04,0.534
ITEM_04.04.02,34,04,04.04,0.743
ITEM_04.04.03,34,04,04.04,0.716
ITEM_04.04.04,34,04,04.04,0.676
ITEM_04.04.05,,04,04.04,0.579
ITEM_04.04.06,35,04,04.04,0.674
ITEM_04.04.07,35,04,04.04,0.683
ITEM_05.01.01,,05,05.01,0.835
ITEM_05.01.02,,05,05.01,0.686
ITEM_05.01.03,,05,05.01,0.804
ITEM_05.01.04,,05,05.01,0.608
ITEM_05.01.05,36,05,05.01,0.766
ITEM_05.01.07,36,05,05.01,0.798
ITEM_05.01.08,,05,05.01,0.647
ITEM_05.01.09,,05,05.01,0.721
ITEM_05.01.11,37,05,05.01,0.741
ITEM_05.01.20,37,05,05.01,0.743
ITEM_05.02.01,,05,05.02,0.793
ITEM_05.02.02,38,05,05.02,0.681
ITEM_05.02.03,,05,05.02,0.625
ITEM_05.02.04,38,05,05.02,0.67
ITEM_05.02.05,39,05,05.02,0.747
ITEM_05.02.06,39,05,05.02,0.736
ITEM_05.02.07,40,05,05.02,0.728
ITEM_05.02.08,40,05,05.02,0.704
;

/* reading data from the question bank (forcing the 8 questions)*/
data question_bank; 
 set question_bank; 
  if Question in('ITEM_01.01.01', 
				 'ITEM_02.02.02', 
				 'ITEM_02.02.07', 
				 'ITEM_03.01.02', 
				 'ITEM_03.03.10', 
				 'ITEM_04.01.07', 
				 'ITEM_04.02.10', 
				 'ITEM_05.02.07') /* from given dataset (3/3)*/ 
  then force_status = 'force'; /* setting 'force' to mandatory questions*/
	else force_status = ' '; 
run;

proc optmodel;
/* defining arrays and parameters*/

SET <str, num, str, str> QUESTION;
SET <str> OBJECTIVE;
SET EXAMS = /Practice Live/;

str force_status{QUESTION};

num Correct{Question};
num Objective_Questions{Objective};

/* reading data into the defined parameters*/
read data QUESTION_BANK 
into QUESTION = [Question Frenemy_Group Topic Objective];

read data OBJECTIVE_QUESTIONS 
into OBJECTIVE = [Objective]; 

read data QUESTION_BANK 
into [Question Frenemy_Group Topic Objective] Correct = Correct; 

read data OBJECTIVE_QUESTIONS 
into [Objective] Objective_Questions = Objective_Questions; 

read data QUESTION_BANK 
into [Question Frenemy_Group Topic Objective] force_status = force_status; 

set FRENEMYGROUPS = setof{<q,f,t,o> in QUESTION: f>0} f; /* creating a new subset of frenemy groups from Question set */

print Correct;
print Objective_Questions; 
print force_status;


put EXAMS;
put FRENEMYGROUPS;

/* declaring the variables to be used in the optimization*/
var SelQns {QUESTION,EXAMS} binary;
var surplus >= 0; /* used a dummy variable for linearizing the objective */
var difference >= 0; /* used a dummy variable for linearizing the objective */
var w {<q,f,t,o> in QUESTION} binary; /* used a dummy variable for linearizing the constraint */

/* making sure the force questions will appear in our final list of questions*/
for {<q,f,t,o> in QUESTION: force_status[q, f, t, o] = 'force'}
    fix SelQns[q,f,t,o, 'Live'] = 1;

impvar Obj_Qns1 {o in OBJECTIVE} = sum {<q,f,t,(o)> in QUESTION} SelQns[q,f,t,(o),'Live']; /*used for defining the questions per objective constarint in live exam*/
impvar Obj_Qns2 {o in OBJECTIVE} = sum {<q,f,t,(o)> in QUESTION} SelQns[q,f,t,(o),'Practice']; /*used for defining the questions per objective constarint in practice exam*/
impvar Fren_Qns1 {f in FRENEMYGROUPS} = sum {<q,(f),t,o> in QUESTION} SelQns[q,(f),t,o,'Live']; /*used for defining the questions per frenenmy group constarint in live exam*/
impvar Fren_Qns2 {f in FRENEMYGROUPS} = sum {<q,(f),t,o> in QUESTION} SelQns[q,(f),t,o,'Practice']; /*used for defining the questions per frenenmy group constarint in practice exam*/

con TotQns1:
sum {<q,f,t,o> in QUESTION} SelQns[q,f,t,o,'Live'] = 50; /* constraint for total number of questions in live exam*/


con TotQns2:
sum {<q,f,t,o> in QUESTION} SelQns[q,f,t,o,'Practice'] = 50; /* constraint for total number of questions in practice exam*/

con ObjLimits1{o in OBJECTIVE}:
Obj_Qns1[o] = Objective_Questions[o]; /* constraint for total number of questions per objective in live exam*/

con ObjLimits2{o in OBJECTIVE}:
Obj_Qns2[o] = Objective_Questions[o]; /* constraint for total number of questions per objective in practice exam*/

con FrenemyLimits1{f in FRENEMYGROUPS}:
Fren_Qns1[f] <= 1; /* constraint for total number of questions per frenemy in live exam*/

con FrenemyLimits2{f in FRENEMYGROUPS}:
Fren_Qns2[f] <= 1; /* constraint for total number of questions per frenemy in practice exam*/


/* ensure 'w' is binary*/
con w1 {<q,f,t,o> in QUESTION}:
   w[q,f,t,o] <= SelQns[q,f,t,o,'Live']; 

con w2 {<q,f,t,o> in QUESTION}:
   w[q,f,t,o] <= SelQns[q,f,t,o,'Practice'];

con w3 {<q,f,t,o> in QUESTION}:
   w[q,f,t,o] + 1 >=  SelQns[q,f,t,o,'Live'] + SelQns[q,f,t,o,'Practice'];


con w4:
sum {<q,f,t,o> in QUESTION} w[q,f,t,o] >=5; /* constraint to define lower limit of overlap between live and practice question papers */

con w5:
sum {<q,f,t,o> in QUESTION} w[q,f,t,o] <= 10; /* constraint to define the upper limit of overlap between live and practice question papers */

expand;

con surplusDifference:
sum {<q,f,t,o> in QUESTION} SelQns[q,f,t,o,'Live'] * Correct[q,f,t,o]
- sum {<q,f,t,o> in QUESTION} SelQns[q,f,t,o,'Practice'] * Correct[q,f,t,o]
- surplus + difference = 0; /*constraint for linearizing objective and make it solvable*/

con tolerence:
sum {<q,f,t,o> in QUESTION} SelQns[q,f,t,o,'Live'] * Correct[q,f,t,o] <= 1.0222 * 32.024; /* constraint for adjusting tolerance of difficulty */


min easiness =  surplus + difference; /* objective function for minimising difference between both exams and practice*/

solve;

print SelQns;

/* writing output data for live exam set*/
create data tier5_sol from [Questions Frenemy Topic Objective] = {<q, f, t, o> in QUESTION : SelQns[q, f, t, o, 'Live'] > 0}
exam = 'Live'
correct = Correct
Force_Status = force_status ;

/* writing output data for practice exam set*/
create data tier5_sol2 from [Questions Frenemy Topic Objective] = {<q, f, t, o> in QUESTION : SelQns[q, f, t, o, 'Practice'] > 0}
exam = 'Practice'
correct = Correct
Force_Status = force_status ;



/* Measuring difficult level of live exam set*/
proc sql;
select sum(correct) as sum_Correct_Live
 from tier5_sol;

/* Measuring difficult level of practice exam set*/
proc sql;
select sum(correct) as Sum_Correct_Practice
 from tier5_sol2;

/*  joining both of the output file to one single output file*/
proc sql;
CREATE TABLE prefinal AS
SELECT * FROM tier5_sol
UNION ALL
SELECT * FROM tier5_sol2; 

/* Creating a temporary table to hold intermediate results */
proc sql;
CREATE TABLE temp AS
SELECT Questions,
       CASE
           WHEN COUNT(*) > 1 THEN 1
           ELSE 0
       END AS overlap
FROM prefinal
GROUP BY Questions;

/* creating final table by adding a column for specifying overlap questions to the prefinal table */
proc sql;
    CREATE TABLE final AS
    SELECT *
    FROM prefinal AS A
    LEFT JOIN temp AS B
    ON A.Questions = B.Questions; 

/* Measuring difficult level of questions at individual level for both live and practice sets*/
proc sql;
select distinct exam,
 count(distinct Questions) as Questions,
 avg(Correct) as Avg_Correct
 from final
 group by exam
 order by exam;
quit;