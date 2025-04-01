# EarlyWarningSignals_Repo

This repository contains scripts and data to replicate “**Early warning signals do not predict a warming-induced experimental epidemic**”, by Madeline Jarvis-Cross (madeline.jarvis.cross@mail.utoronto.ca), Devin Kirk, Leila Krichel, Pepijn Luijckx, Péter K. Molnár, and Martin Krkošek. 

Here, we combine experimental and simulated data to assess the predictability of warming-induced epidemic emergence in the *Daphnia magna–Ordospora* colligata host-parasite system. 

---

To replicate this work:

Clone this repository, and load “`EarlyWarningSignals_Repo.Rproj`”. If you run any of the scripts from the "`Code`" folder (listed below), please do so in numerical order. Each script was written as an R Markdown document so as to clearly state and describe a script's purpose, and increase readability. 

* `1_EWS-SimData.Rmd`: Looking for EWS in raw simulated data.
* `2_EWS-EmpData.Rmd`: Looking for EWS in raw experimental data.
* `3_Detrending.Rmd`: De-trending simulated and empirical data via a Gaussian kernel. 
* `4_EWS-Detrend-SimData.Rmd`: Looking for EWS in detrended simulated data.
* `5_EWS-Detrend-EmpData.Rmd`: Looking for EWS in detrended experimental data.
* `6_EWS-ByPop.Rmd`: Calculating Kendall's Tau by population to create a distribution of population-level outcomes.
* `7_SamplingSims.Rmd`: Applying sampling protocol to raw simulated data and re-analysing (per `1_EWS-SimData.Rmd`).
* `8_SigTesting.Rmd`: Assessing significance of empirical detections via four methods.
* `9_ReAnalysis-RestrictedPeriod.Rmd`: Re-analysing raw data within smaller pre-critical intervals.

A guide to the “`Data`” folder:

1. `Simulated`
	* Contains simulated time series of disease spread within 1000 "Control" and 1000 "Warming" populations.
2. `Experimental`
	* Experimental time series of disease spread within 4 "Control" and 4 "Warming" populations. These data were derived from an experiment conducted and published by Kirk et al. [("Experimental evidence of warming-induced disease emergence and its prediction by a trait-based mechanistic model")](https://royalsocietypublishing.org/doi/10.1098/rspb.2020.1526).
		
---

If you have any questions about this repository, please contact me (Maddie) at the email address listed above, or at mjarviscross@gmail.com. 
