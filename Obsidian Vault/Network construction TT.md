Temporal resolution at 3 hours with 37 nodes in the system.
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

The models is allowed to expand technology capacity to meet the energy demand and costs are found in table S2 above as well as efficiencies and emissions in table S1 above. the costs are from the techology  catalouge. discount rate of 7% is used as r and n as tyechnical lifetime for anuallization by:
