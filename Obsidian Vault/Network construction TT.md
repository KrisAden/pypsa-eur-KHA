Temporal resolution at 3 hours based on:

Schyska, B.U., Kies, A., Schlott, M., von
Bremen, L., and Medjroubi, W. (2021). The
sensitivity of power system expansion
models. Joule 5, 2606–2624.

and
Frysztacki, M.M., Ho¨ rsch, J., Hagenmeyer, V.,
and Brown, T. (2021). The strong effect of
network resolution on electricity system
models with high shares of wind and solar.
Appl. Energy 291, 116726.


with 37 nodes in the system.
11 generator types
3 storage types
Model includes existing infrastructure as well as planend infrastructure operationel in 2030
![[Pasted image 20250206130307.png]]

The network is based on the PyPSA-Eur-Sec model: https://zenodo.org/records/4317529

Pareto optimal front as found in the paper was found for a uniform CO2 Price. My theory is then that if the co2 prices are allowed to be heterogenous and decentralisation is enforced through self-sufficiency parameters the price should become higher but more politically viable. 

2030 brownfield scenario includes *33?* nodes. EU-27 minus Cyprus and Malta plus Norway, Switzerland, Serbia, Bosnia-Herzegovenia, Albania, Montenegro and UK.

The existing conventional capacities are from Hofmann, F., and Ho¨ rsch, J. (2019). Fresna -
powerplantmatching v.0.4.1. https://doi.org/10.5281/zenodo.3358985

The existing renewables are from IRENA. Anual Statistics. Technical Report,
IRENA. https://www.irena.org/Statistics/Download-Data.

energy-generating technologies included are hydro, onshore wind, offshore wind, solar photovoltaic PV, combined cycle gas turbine (CCGT), open cycle gas turbine (OCGT), coal, lignite, nuclear, and oil.

Hydrogen and battery storage are included.

![[Supplemental_model_TT.pdf]]

Existing and planned transmission capacities are from:

https://tyndp.entsoe.eu/tyndp2018

The transmission capacities are clustered to one node per synchronous zone setup with the nodes connected by representative HV AC and HV DC lines.

The models is allowed to expand technology capacity to meet the energy demand and costs are found in table S2 above as well as efficiencies and emissions in table S1 above. the costs are from the technology catalogue. discount rate of 7% is used as r and n as technical lifetime for annualization by:

$$
a=\frac{1-(1+r)^{{-n}}}{r}
$$
since a 3 hour temporal resoluion is used the transmission and generator capacities have been aggregated as in:

Ho¨ rsch, J., and Brown, T. (2017). The role of
spatial scale in joint optimisations of
generation and transmission for european

The national co2 targets are given by the sampler and are not optimized in the model.

Assumptions are:
perfect competition
perfect foresight
long term market equilibrium
for all nodes and all hours the energy demand must be fulfilled.


The demand is from ENTSOE-E (https://www.entsoe.eu/data/data-portal/) and decomposed into resedential and industruial demand by the method used in (Ho¨ rsch, J., Hofmann, F., Schlachtberger, D.,
and Brown, T. (2018). Pypsa-eur: an open
optimisation model of the european
transmission system. Energy Strategy Rev. 22,
207–215. https://doi.org/10.1016/j.esr.2018.
08.012.)

The paper above should also contain the hourly capacity factors for the renewables.

For constructing the pareto front (efficiency scenario) a global co2 constranit has been imposed  as:

$$
\sum_{n,s,t} \frac{1}{\eta}_{s}\cdot{g}_{n,s,t}\cdot{e}_{s}-{CAP}_{{CO}_{2}}\leq_{0}
$$
The CO2 cap is the global emission limit in tons of co2 eta is the efficiency of the technology and e is the intensity of the technology. the minimum of 55% reduction corresponds to 666.85 Mton CO2

![[Pasted image 20250206135407.png]]![[Pasted image 20250206135447.png]]