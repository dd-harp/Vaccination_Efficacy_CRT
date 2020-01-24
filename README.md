# Vaccination Efficacy

The purpose of this project, which began after the 2017 ASTMH BIMEP TAG meeting,
was to identify areas on Bioko Island which were good candidates for clusters which
might participate in a Cluster Randomized Trial. The project also was preliminary
work for a potential future article on cluster site selection.

The fundamental problem was that the CRT planning was constrained in a number of
different ways. First, there was the problem of a limited number of doses and other
costs associated with running a clinical trial on a large scale. Second, there was
the problem of limited effectiveness of Sanaria's vaccine, that the effect size
in terms of personal protective efficacy (PPE) was actually very small. Third, and
perhaps most importantly, there was the problem of geography on Bioko Island, that
between the island being very small and most of the population being concentrated in
Malabo there were very few locations on the island that served as obvious candidates
for participation in a CRT.

The work that I did here was to use the Ross-Macdonald model to calculate an effect
size associated with a cluster, given that cluster's geographical location, resident
population, transmission ecology, and vaccine uptake and PPE. Effect sizes could then be transformed into statistical power, which would help evaluate the future
strength and potential usefulness of any future planned trials. I had future intentions to expand whichever analysis to include whatever larger and more complex version of the MASH simulation software became available.

The specific step that the model offers is mapping PPE onto population-level protection through reducing EIR.

The documents included here include:
  * GeRMS with Vaccinations.nb - This is a Mathematica Notebook which shows the
  arithmetic required for performing the effect size and statistical power calculations
  * GeRMS with Vaccinations - plots of indirect effect size.ipynb - This is an
  iPython Jupyter notebook which makes nice plots of results from Mathematica
  * Required Vaccine Coverage, using GeRMS.ipynb - plots of vaccine coverage,
  required to achieve elimination according to the Ross-Macdonald model
  * GeRMS_effect_size_plots - results from the mathematica notebook
  * Sample size for parallel CRT in Bioko - Tom Smith.PDF - document authored by Tom Smith on sample size and CRT efficacy. Note that the effect size used in these
  calculations is based on nothing.
  * Sample size for parallel CRT in Bioko - Tom Smith.R - R code associated with Tom Smith's calculations, made it possible to double check what he was claiming
  * v_required_vs_baseline_pr.pdf - A slide I made for Sanaria using this model, eventually presented to Tony Fauci at NIAID
