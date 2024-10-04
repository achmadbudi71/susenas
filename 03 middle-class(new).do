

cd "E:\kelompok menengah"
**blok3 
quietly {
// Initialize a variable to control the loop
local i = 2014

// Start the loop to append files
while `i' <= 2023 {  // Replace 10 with the number of files you have
    // Define the filename based on the loop counter
    local filename = "middleclass_`i'.dta"

    // If it's the first file, use it to start the dataset
    if `i' == 2014 {
        use `filename', clear
    }
    else {
        // Append the subsequent files
        append using `filename', force
    }

    // Increment the loop counter
    local i = `i' + 1
}

//r//en (karbo lemak protein kalori) (karbo_kap lemak_kap protein_kap kalori_kap) if inrange(tahun,2014,2017)

// Save the combined dataset

//gen pcexp0=kapita/povline
keep r101 r105 r301 tahun weind  middle_class  povline food nfood kapita expend pcexp0 rpcexp urut wert decile

**riil value of kapita



save "combined_data.dta", replace
}