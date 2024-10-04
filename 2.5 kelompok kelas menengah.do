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

///step dua setengah

quietly {

foreach num of numlist 2014 2015 2016 2017 2018 2019 2020 2021 2022 2023 {
		
		use "middleclass_`num'" , clear

		//if inrange(`num',2014,2017) {
		//ren (karbo lemak protein kalori) (karbo_kap lemak_kap protein_kap kalori_kap)
		//}
		//else {
		//ren nonfood nfood 
		//}
		
		keep if middle_class==4
		xtile desil=kapita [w=round(weind)], nq(10)

		*ren (karbo lemak protein kalori) (karbo_kap lemak_kap protein_kap kalori_kap)
		//keep r101 r105 tahun weind  middle_class kalori_kap prote_kap lemak_kap povline karbo_kap
		save "only_middleclass_`num'" , replace
}

}

	

