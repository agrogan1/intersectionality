use "TutorialData.dta", clear

* generate strata

generate stratum = 10000*sex + 1000*race + 100*education + 10*income + 1*age

* ANOVA or Null model

mixed HbA1c || stratum:

* full model

mixed HbA1c i.sex i.race i.education i.income i.age || stratum:



