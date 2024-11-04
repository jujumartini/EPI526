*Some useful tips just for myself
*Find and Replace: CTRL+H
*Setup
cd "C:\Users\bdnat\Documents\Harvard\Class\EPI 526 - Analysis Publicly Available Databases Epidemiologic Health Services Research\"

log using "STATA\clean_2024-11-02.smcl", replace

* # Step 1 ---------------------------------------------------------------------
*Download all files to convert to dta.

* ## Demographics (DEMO) --------------------
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DEMO_G.XPT"
save "data/0_raw/demo_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DEMO_H.XPT"
save "data/0_raw/demo_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DEMO_I.XPT"
save "data/0_raw/demo_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DEMO_J.XPT"
save "data/0_raw/demo_j.dta", replace

* ## Questionnaires --------------------

* ### Alcohol Use (ALQ)
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/ALQ_G.XPT"
save "data/0_raw/alq_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/ALQ_H.XPT"
save "data/0_raw/alq_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/ALQ_I.XPT"
save "data/0_raw/alq_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ALQ_J.XPT"
save "data/0_raw/alq_j.dta", replace

* ### Blood Pressure & Cholesterol (BPQ)
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/BPQ_G.XPT"
save "data/0_raw/bpq_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/BPQ_H.XPT"
save "data/0_raw/bpq_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/BPQ_I.XPT"
save "data/0_raw/bpq_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/BPQ_J.XPT"
save "data/0_raw/bpq_j.dta", replace

* ### Diabetes (DIQ)
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DIQ_G.XPT"
save "data/0_raw/diq_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DIQ_H.XPT"
save "data/0_raw/diq_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DIQ_I.XPT"
save "data/0_raw/diq_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DIQ_J.XPT"
save "data/0_raw/diq_j.dta", replace

* ### Diet Behavior & Nutrition (DBQ)
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DBQ_G.XPT"
save "data/0_raw/dbq_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DBQ_H.XPT"
save "data/0_raw/dbq_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DBQ_I.XPT"
save "data/0_raw/dbq_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DBQ_J.XPT"
save "data/0_raw/dbq_j.dta", replace

* ### Medical Conditions (MCQ)
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/MCQ_G.XPT"
save "data/0_raw/mcq_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/MCQ_H.XPT"
save "data/0_raw/mcq_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/MCQ_I.XPT"
save "data/0_raw/mcq_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/MCQ_J.XPT"
save "data/0_raw/mcq_j.dta", replace

* ### Physical Activity (PAQ)
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PAQ_G.XPT"
save "data/0_raw/paq_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/PAQ_H.XPT"
save "data/0_raw/paq_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/PAQ_I.XPT"
save "data/0_raw/paq_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PAQ_J.XPT"
save "data/0_raw/paq_j.dta", replace

* ### Smoking - Cigarette Use (SMQ)
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/SMQ_G.XPT"
save "data/0_raw/smq_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/SMQ_H.XPT"
save "data/0_raw/smq_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/SMQ_I.XPT"
save "data/0_raw/smq_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/SMQ_J.XPT"
save "data/0_raw/smq_j.dta", replace

* ## Examination --------------------

* ### Body Measures
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/BMX_G.XPT"
save "data/0_raw/bmx_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/BMX_H.XPT"
save "data/0_raw/bmx_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/BMX_I.XPT"
save "data/0_raw/bmx_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/BMX_J.XPT"
save "data/0_raw/bmx_j.dta", replace

* ### Blood Pressure
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/BPX_G.XPT"
save "data/0_raw/bpx_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/BPX_H.XPT"
save "data/0_raw/bpx_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/BPX_I.XPT"
save "data/0_raw/bpx_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/BPX_J.XPT"
save "data/0_raw/bpx_j.dta", replace

* ## Laboratory --------------------

* ### Plasma Fasting Glucose & Insulin (GLU)
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/GLU_G.XPT"
save "data/0_raw/glu_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/GLU_H.XPT"
save "data/0_raw/glu_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/GLU_I.XPT"
save "data/0_raw/glu_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/GLU_J.XPT"
save "data/0_raw/glu_j.dta", replace

* ### Cholesterol - HDL (HDL)
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HDL_G.XPT"
save "data/0_raw/hdl_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HDL_H.XPT"
save "data/0_raw/hdl_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HDL_I.XPT"
save "data/0_raw/hdl_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HDL_J.XPT"
save "data/0_raw/hdl_j.dta", replace


* ### Cholesterol - LDL & Triglycerides (TRIGLY)
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/TRIGLY_G.XPT"
save "data/0_raw/trigly_g.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/TRIGLY_H.XPT"
save "data/0_raw/trigly_h.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/TRIGLY_I.XPT"
save "data/0_raw/trigly_i.dta", replace
import sasxport5 "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/TRIGLY_J.XPT"
save "data/0_raw/trigly_j.dta", replace

* # Step 2 ---------------------------------------------------------------------
*Use a loop to merge datasets and apply inclusion/exclusion criteria by year
*so that when we append
*Well TRY to do a loop but fail and end up just copying and pasting but its
*not that bad. 
clear all

local letters "h" "i" "j"
local names "alq" "bpq" "diq" "dbq" "mcq" "paq" "smq" "bmx" "bpx" ///
			"glu" "hdl" "trigly"

use "data/0_raw/demo_g.dta", clear
merge 1:1 seqn using "data/0_raw/alq_g.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bpq_g.dta", nogenerate
merge 1:1 seqn using "data/0_raw/diq_g.dta", nogenerate
merge 1:1 seqn using "data/0_raw/dbq_g.dta", nogenerate
merge 1:1 seqn using "data/0_raw/mcq_g.dta", nogenerate
merge 1:1 seqn using "data/0_raw/paq_g.dta", nogenerate
merge 1:1 seqn using "data/0_raw/smq_g.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bmx_g.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bpx_g.dta", nogenerate
merge 1:1 seqn using "data/0_raw/glu_g.dta", nogenerate
merge 1:1 seqn using "data/0_raw/hdl_g.dta", nogenerate
merge 1:1 seqn using "data/0_raw/trigly_g.dta", nogenerate
save "data/0_raw/nhanes_g.dta", replace

use "data/0_raw/demo_h.dta", clear
merge 1:1 seqn using "data/0_raw/alq_h.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bpq_h.dta", nogenerate
merge 1:1 seqn using "data/0_raw/diq_h.dta", nogenerate
merge 1:1 seqn using "data/0_raw/dbq_h.dta", nogenerate
merge 1:1 seqn using "data/0_raw/mcq_h.dta", nogenerate
merge 1:1 seqn using "data/0_raw/paq_h.dta", nogenerate
merge 1:1 seqn using "data/0_raw/smq_h.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bmx_h.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bpx_h.dta", nogenerate
merge 1:1 seqn using "data/0_raw/glu_h.dta", nogenerate
merge 1:1 seqn using "data/0_raw/hdl_h.dta", nogenerate
merge 1:1 seqn using "data/0_raw/trigly_h.dta", nogenerate
save "data/0_raw/nhanes_h.dta", replace

use "data/0_raw/demo_i.dta", clear
merge 1:1 seqn using "data/0_raw/alq_i.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bpq_i.dta", nogenerate
merge 1:1 seqn using "data/0_raw/diq_i.dta", nogenerate
merge 1:1 seqn using "data/0_raw/dbq_i.dta", nogenerate
merge 1:1 seqn using "data/0_raw/mcq_i.dta", nogenerate
merge 1:1 seqn using "data/0_raw/paq_i.dta", nogenerate
merge 1:1 seqn using "data/0_raw/smq_i.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bmx_i.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bpx_i.dta", nogenerate
merge 1:1 seqn using "data/0_raw/glu_i.dta", nogenerate
merge 1:1 seqn using "data/0_raw/hdl_i.dta", nogenerate
merge 1:1 seqn using "data/0_raw/trigly_i.dta", nogenerate
save "data/0_raw/nhanes_i.dta", replace

use "data/0_raw/demo_j.dta", clear
merge 1:1 seqn using "data/0_raw/alq_j.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bpq_j.dta", nogenerate
merge 1:1 seqn using "data/0_raw/diq_j.dta", nogenerate
merge 1:1 seqn using "data/0_raw/dbq_j.dta", nogenerate
merge 1:1 seqn using "data/0_raw/mcq_j.dta", nogenerate
merge 1:1 seqn using "data/0_raw/paq_j.dta", nogenerate
merge 1:1 seqn using "data/0_raw/smq_j.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bmx_j.dta", nogenerate
merge 1:1 seqn using "data/0_raw/bpx_j.dta", nogenerate
merge 1:1 seqn using "data/0_raw/glu_j.dta", nogenerate
merge 1:1 seqn using "data/0_raw/hdl_j.dta", nogenerate
merge 1:1 seqn using "data/0_raw/trigly_j.dta", nogenerate
save "data/0_raw/nhanes_j.dta", replace

* # Step 3 ---------------------------------------------------------------------
*Append

use "data/0_raw/nhanes_g.dta", clear
append using "data/0_raw/nhanes_h.dta"
append using "data/0_raw/nhanes_i.dta"
append using "data/0_raw/nhanes_j.dta"

* # Step 4 ---------------------------------------------------------------------
*Double-check outcome of cancer by cross referencing with data dictionary
* mcq220 value of "1" should be 488 + 547 + 549 + 588 = 2172
tab sddsrvyr mcq220 /* looking good */

* # Step 5 ---------------------------------------------------------------------
*Apply exclusion/inclusion criteria

*Only include individuals who answer "Yes" or "No" to "{Have you/Has SP} ever 
*been told by a doctor or other health professional that {you/s/he} had cancer
*or a malignancy (ma-lig-nan-see) of any kind?"
keep if mcq220 == 1 | mcq220 == 2

*Only include individuals between the ages of 20 - 79 since ages past 80 are
*truncated.
drop if ridageyr >= 80

*Include individuals who were not pregnant at exam. The variable only applies
*to females 20-44 years.
drop if ridexprg != 2 & riagendr == 2 & ridageyr <= 44 

*Will not drop cases that are missing data since we should:
*1) Define metabolic syndrome (did my best to include relevant datasets
*	but feel free to explore other data from NHANES)
*2) Explore missingness.

* # Step 6 ---------------------------------------------------------------------
*Create variables needed for project that are not already made.

* ## Metabolic Syndrome (metsyn) --------------------

*TODO

* ## MET-Minutes / Week (metmin) --------------------
*If a person answers anything other than "Yes" to 
*	paq605 (does vigorous occupational PA?)
*	paq620 (does moderate occupational PA?)
*	paq635 (does transporation PA?)
*	paq650 (does vigorous leisure PA?)
*	paq665 (does moderate leisure PA?)
*then make the corresponding "days" and "mins" variable 0
*Occupation
replace paq610 = 0 if paq605 != 1 /* vigorous occupation PA days */
replace pad615 = 0 if paq605 != 1 /* vigorous occupation PA mins/day */
replace paq625 = 0 if paq620 != 1 /* moderate occupation PA days */
replace pad630 = 0 if paq620 != 1 /* moderate occupation PA mins/day */


*Transportation
replace paq640 = 0 if paq635 != 1 /* transportation PA days */
replace pad645 = 0 if paq635 != 1 /* transportation PA mins/day */

*Leisure
replace paq655 = 0 if paq650 != 1 /* vigorous leisure PA days */
replace pad660 = 0 if paq650 != 1 /* vigorous leisure PA mins/day */
replace paq670 = 0 if paq665 != 1 /* moderate leisure PA days */
replace pad675 = 0 if paq605 != 1 /* moderate leisure PA mins/day */

*Generate variables.
generate metmin_opa_vig = paq610 * pad615 * 8 /*days x mins/day x 8 METs */
generate metmin_opa_mod = paq625 * pad630 * 4 /*days x mins/day x 4 METs */
generate metmin_tpa     = paq640 * pad645 * 4 /*days x mins/day x 4 METs */
generate metmin_lpa_vig = paq655 * pad660 * 8 /*days x mins/day x 8 METs */
generate metmin_lpa_mod = paq670 * pad675 * 4 /*days x mins/day x 4 METs */

generate metmin = metmin_opa_vig + metmin_opa_mod + metmin_tpa + metmin_lpa_vig + metmin_lpa_mod

* ## Smoke (smoke) --------------------
generate smoke = .
	replace smoke = 0 if smq020 == 0 /* answered "No" to "Have you ever smoked 
										at least 100 cigarettes in life?" */
	replace smoke = 1 if smq020 == 1 /* answered "Yes" to "Have you ever smoked 
										at least 100 cigarettes in life?" */
	replace smoke = 2 if smq040 == 1 | smq040 == 2 /* answered "Every day" or
													  "Some days" to "Do you now
													  smoke cigarettes?" */

* ## Education (education) --------------------
generate education = dmdeduc2
	replace education = 0 if dmdeduc2 == 1 | dmdeduc2 == 2 | dmdeduc2 == 3
	replace education = 1 if dmdeduc2 == 4 | dmdeduc2 == 5

* # Step 7 ---------------------------------------------------------------------
*Drop uneeded variables. I have not done this yet because I do not want to
*accidently delete a variable needed for metabolic syndrome.
 
*keep mcq220 metsyn metmin ridageyr riagendr indfmpir smoke alq130 education ridreth3 dbq700 bmxbmi wtint2yr wtmec2yr wtsaf2yr.x

save "data/1_clean/nhanes.dta", replace

log close