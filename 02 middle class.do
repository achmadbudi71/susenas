clear
set more off
cap log close
/*
global raw_data_povline		"E:\analisis\GIC\raw"
global log_files            "E:\analisis\GIC\log files"
global created_graph        "E:\analisis\GIC\log files"
global created_data         "E:\analisis\GIC\created data"    
cd "$created_data" 
*/



cd "E:\kelompok menengah"

***step kedua analisis kelas menengah\\

quietly {

foreach num of numlist 2014 2015 2016 2017 2018 2019 2020 2021 2022 2023 {
		
		use "E:\kelompok menengah\\`num'=class.dta", 
		//if inrange(`num',2014,2017) {
		//ren (karbo lemak protein kalori) (karbo_kap lemak_kap protein_kap kalori_kap)
		//}
		//else {
		//ren nonfood nfood 
		//}
		
		if inrange(tahun,2018,2023) ren nonfood nfood
		if inrange(tahun,2014,2017) ren (karbo lemak protein kalori) (karbo_kap lemak_kap protein_kap kalori_kap)
			
		gen middle_class=0
		replace middle_class= 1 if kapita <=povline
		replace middle_class= 2 if inrange(kapita,povline,1.5 *povline)
		replace middle_class= 3 if inrange(kapita,1.5*povline,3.5 *povline)
		replace middle_class= 4 if inrange(kapita,3.5*povline,17*povline)
		replace middle_class= 5 if kapita >(17 *povline)
		
		label define aaa 1 "miskin" 2 "vulnerable" 3 "AMC" 4 "middle_class" 5 "upperclass"
		label values middle_class aaa
		sum tahun
		*su povline [fw=round(weind)]
		gen rpovline = r(mean)
		gen rpcexp 	 = kapita * rpovline / povline  ///membuat angka riil
		///keep if middle_class==4
		//xtile desil=kapita [w=round(weind)], nq(10)

		*ren (karbo lemak protein kalori) (karbo_kap lemak_kap protein_kap kalori_kap)
		//keep r101 r105 tahun weind  middle_class kalori_kap prote_kap lemak_kap povline karbo_kap
		save "middleclass_`num'" , replace
}

}

	

