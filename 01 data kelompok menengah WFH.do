cd "E:\kelompok menengah"
****step pertama analisis kelas menengah

quietly {

*2014*

use "E:\analisis\blok43\povline2013-2023", clear
*gen r101 = b1r1
keep if tahun==2014
*gen r105 = b1r5
merge m:m r101 r105 using "2014=blok43"
drop _merge
gen class=2014
gen poor = 0 
replace poor = 1 if kapita<povline 
gen pcexp0=kapita/povline
sepov kapita [w=round(weind)], p(povline)
//xtile desil=kapita [w=round(weind)], nq(10)  
xtile persentil = pcexp0 [w = weind], nq(100) /* menyusun desil*/
tab persentil poor [w=round(weind)]
sepov kapita [w=round(weind)], p(povline)

save "2014=class", replace

*2015*
use "E:\analisis\blok43\povline2013-2023", clear
*gen r101 = b1r1
keep if tahun==2015
*gen r105 = b1r5
merge m:m r101 r105 using "2015=blok43"

drop _merge
gen class=2015
gen poor = 0 
replace poor = 1 if kapita<povline 
gen pcexp0=kapita/povline
sepov kapita [w=round(weind)], p(povline)
//xtile desil=kapita [w=round(weind)], nq(10)
xtile persentil = pcexp0 [w = weind], nq(100) /* menyusun desil*/
tab persentil poor [w=round(weind)]
sepov kapita [w=round(weind)], p(povline)
save "2015=class", replace


*2016*
use "E:\analisis\blok43\povline2013-2023", clear
*gen r101 = b1r1
keep if tahun==2016
*gen r105 = b1r5
merge m:m r101 r105 using "2016=blok43"
drop _merge
gen class=2016
//ren exp_cap kapita
//ren fwt_tahun weind
gen poor = 0 
replace poor = 1 if kapita<povline 
gen pcexp0=kapita/povline
sepov kapita [w=round(weind)], p(povline)
*xtile desil=kapita [w=round(weind)], nq(10)
xtile persentil = pcexp0 [w = weind], nq(100) /* menyusun desil*/
tab persentil poor [w=round(weind)]
sepov kapita [w=round(weind)], p(povline)
save "2016=class", replace

*2017
use "E:\analisis\blok43\povline2013-2023", clear
*gen r101 = b1r1
keep if tahun==2017
*gen r105 = b1r5
merge m:m r101 r105 using "2017=blok43"

drop _merge
gen class=2017
gen poor = 0 
replace poor = 1 if kapita<povline 
gen pcexp0=kapita/povline
sepov kapita [w=round(weind)], p(povline)
*xtile desil=kapita [w=round(weind)], nq(10)
xtile persentil = pcexp0 [w = weind], nq(100) /* menyusun desil*/
tab persentil poor [w=round(weind)]
sepov kapita [w=round(weind)], p(povline)
save "2017=class", replace


*2018*
use "E:\analisis\blok43\povline2013-2023", clear
*gen r101 = b1r1
keep if tahun==2018
*gen r105 = b1r5
merge m:m r101 r105 using "2018=blok43"

drop _merge
gen class=2018
gen poor = 0 
replace poor = 1 if kapita<povline 
gen pcexp0=kapita/povline
sepov kapita [w=round(weind)], p(povline)
*xtile desil=kapita [w=round(weind)], nq(10)
xtile persentil = pcexp0 [w = weind], nq(100) /* menyusun desil*/
tab persentil poor [w=round(weind)]
sepov kapita [w=round(weind)], p(povline)
save "2018=class", replace


*2019*
use "E:\analisis\blok43\povline2013-2023", clear
*gen r101 = b1r1
keep if tahun==2019
*gen r105 = b1r5
merge m:m r101 r105 using "2019=blok43"

drop _merge
gen class=2019
gen poor = 0 
replace poor = 1 if kapita<povline 
gen pcexp0=kapita/povline
sepov kapita [w=round(weind)], p(povline)
*xtile desil=kapita [w=round(weind)], nq(10)
xtile persentil = pcexp0 [w = weind], nq(100) /* menyusun desil*/
tab persentil poor [w=round(weind)]
sepov kapita [w=round(weind)], p(povline)
save "2019=class", replace

*2020*
use "E:\analisis\blok43\povline2013-2023", clear
*gen r101 = b1r1
keep if tahun==2020
*gen r105 = b1r5
merge m:m r101 r105 using "2020=blok43"

drop _merge
gen class=2020

gen poor = 0 
replace poor = 1 if kapita<povline 
gen pcexp0=kapita/povline
sepov kapita [w=round(weind)], p(povline)
*xtile desil=kapita [w=round(weind)], nq(10)
xtile persentil = pcexp0 [w = weind], nq(100) /* menyusun desil*/
tab persentil poor [w=round(weind)]
sepov kapita [w=round(weind)], p(povline)
save "2020=class", replace

*2021*
use "E:\analisis\blok43\povline2013-2023", clear
*gen r101 = b1r1
keep if tahun==2021
*gen r105 = b1r5
merge m:m r101 r105 using "2021=blok43"
drop _merge
*gen class=2021
*xtile desil=kapita [w=round(weind)], nq(10)
tab persentil poor [w=round(weind)]
sepov kapita [w=round(weind)], p(povline)
save "2021=class", replace

*2022*
use "E:\analisis\blok43\povline2013-2023", clear
*gen r101 = b1r1
keep if tahun==2022
*gen r105 = b1r5
merge m:m r101 r105 using "2022=blok43"

drop _merge
gen class=2022
gen poor = 0 
replace poor = 1 if kapita<povline 
gen pcexp0=kapita/povline
sepov kapita [w=round(weind)], p(povline)
*xtile desil=kapita [w=round(weind)], nq(10)
xtile persentil = pcexp0 [w = weind], nq(100) /* menyusun desil*/
tab persentil poor [w=round(weind)]
sepov kapita [w=round(weind)], p(povline)
save "2022=class", replace

*2023*
use "E:\analisis\blok43\povline2013-2023", clear
*gen r101 = b1r1
keep if tahun==2023
*gen r105 = b1r5
merge m:m r101 r105 using "2023=blok43"

drop _merge
gen class=2023
gen poor = 0 
replace poor = 1 if kapita<povline 
gen pcexp0=kapita/povline
sepov kapita [w=round(weind)], p(povline)
*xtile desil=kapita [w=round(weind)], nq(10)
xtile persentil = pcexp0 [w = weind], nq(100) /* menyusun desil*/
tab persentil poor [w=round(weind)]
sepov kapita [w=round(weind)], p(povline)
save "2023=class", replace
 
}
