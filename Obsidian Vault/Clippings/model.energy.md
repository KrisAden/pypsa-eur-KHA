---
title: "model.energy"
source: "https://model.energy/"
author:
published:
created: 2024-11-13
description:
tags:
  - "clippings"
---
# This is a simplified energy system model

Constant electricity demand \[MW\] Demand should be large enough for utility-scale assets but small enough to neglect land availability constraints

Technology assumption scenario Individual cost assumptions can be changed below under "advanced assumption settings". 2030 is the default year for technology assumptions because this is a reasonable time by which green products can be scaled up to large volumes.

All costs are in 2020 euros. All energy units for fuels are given for the lower heating value (LHV).

Constant hydrogen demand \[MW-H2-LHV\]

Sampling frequency for weather time-series n-hourly, n<3 is very slow, big n solves faster (n=25 or n=49 give fast and relatively accurate results)

Allam cycle CO2 capture efficiency \[percent\] \[^mitchell2019\]: Mitchell, C., Avagyan, V., Chalmers, H., & Lucquiaud, M. (2019). An initial assessment of the value of Allam Cycle power plants with liquid oxygen storage in future GB electricity system. International Journal of Greenhouse Gas Control, 87, 1–18. https://doi.org/10.1016/j.ijggc.2019.04.020

Allam cycle overnight cost \[EUR/kW\] Assume 2x costs of CCGT based on \[^mitchell2019\], where CCGT is reported 556 gbp/kW, allam 1430 gbp with ASU and w/o ASU 1145.7 gbp, i.e. 2x as expensive as CCGT without the ASU costs; \[^mitchell2019\]: Mitchell, C., Avagyan, V., Chalmers, H., & Lucquiaud, M. (2019). An initial assessment of the value of Allam Cycle power plants with liquid oxygen storage in future GB electricity system. International Journal of Greenhouse Gas Control, 87, 1–18. https://doi.org/10.1016/j.ijggc.2019.04.020

Allam Cycle turbine discount rate \[percent\]

Allam cycle efficiency \[percent, LHV\] \[^mitchell2019\]: Mitchell, C., Avagyan, V., Chalmers, H., & Lucquiaud, M. (2019). An initial assessment of the value of Allam Cycle power plants with liquid oxygen storage in future GB electricity system. International Journal of Greenhouse Gas Control, 87, 1–18. https://doi.org/10.1016/j.ijggc.2019.04.020

Allam cycle FOM \[percent of overnight cost per year\] \[^mitchell2019\]: Mitchell, C., Avagyan, V., Chalmers, H., & Lucquiaud, M. (2019). An initial assessment of the value of Allam Cycle power plants with liquid oxygen storage in future GB electricity system. International Journal of Greenhouse Gas Control, 87, 1–18. https://doi.org/10.1016/j.ijggc.2019.04.020

Allam cycle lifetime \[years\]

Utility-scale battery energy capital cost (overnight) \[EUR/kWh\] Danish Energy Agency, technology\_data\_catalogue\_for\_energy\_storage.xlsx

Utility-scale battery energy discount rate \[percent\]

Utility-scale battery energy fixed operation and maintenance costs \[percent of overnight cost per year\] default

Utility-scale battery energy lifetime \[years\] Danish Energy Agency, technology\_data\_catalogue\_for\_energy\_storage.xlsx

Utility-scale battery converter power capital cost (overnight) \[EUR/kW\] Danish Energy Agency, technology\_data\_catalogue\_for\_energy\_storage.xlsx

Utility-scale battery converter power discount rate \[percent\]

Battery power charging efficiency \[percent\] Danish Energy Agency, technology\_data\_catalogue\_for\_energy\_storage.xlsx

Battery power discharging efficiency \[percent\] Danish Energy Agency, technology\_data\_catalogue\_for\_energy\_storage.xlsx

Utility-scale battery converter power fixed operation and maintenance costs \[percent of overnight cost per year\] Danish Energy Agency, technology\_data\_catalogue\_for\_energy\_storage.xlsx

Utility-scale battery converter power lifetime \[years\] Danish Energy Agency, technology\_data\_catalogue\_for\_energy\_storage.xlsx, Note K.

Maximum average system emissions \[gCO2eq/kWhel\]

Limit on CO2 emissions

CO2 storage tank capital cost (overnight) \[EUR/t\_CO2\] Lauri et al. 2014: doi: 10.1016/j.egypro.2014.11.297, Table 3.

CO2 storage tank discount rate \[percent\]

CO2 storage tank fixed operation and maintenance costs \[percent of overnight cost per year\] Lauri et al. 2014: doi: 10.1016/j.egypro.2014.11.297, pg. 2746 .

CO2 storage tank lifetime \[years\] Lauri et al. 2014: doi: 10.1016/j.egypro.2014.11.297, pg. 2746 .

Direct air capture capital cost (overnight) \[EUR/(tCO2/h)\] Danish Energy Agency, technology\_data\_for\_carbon\_capture\_transport\_storage.xlsx

Direct air capture discount rate \[percent\]

Direct air capture electricity consumption \[MWh/tCO2\] Danish Energy Agency, technology\_data\_for\_carbon\_capture\_transport\_storage.xlsx

Direct air capture fixed operation and maintenance costs \[percent of overnight cost per year\] Danish Energy Agency, technology\_data\_for\_carbon\_capture\_transport\_storage.xlsx

Direct air capture heat consumption \[MWh/tCO2\] Danish Energy Agency, technology\_data\_for\_carbon\_capture\_transport\_storage.xlsx

Direct air capture lifetime \[years\] Danish Energy Agency, technology\_data\_for\_carbon\_capture\_transport\_storage.xlsx

Seawater desalination capital cost (overnight) \[EUR/(m^3-H2O/h)\] Caldera et al 2017: Learning Curve for Seawater Reverse Osmosis Desalination Plants: Capital Cost Trend of the Past, Present, and Future (https://doi.org/10.1002/2017WR021402), Table 4.

Seawater desalination discount rate \[percent\]

Seawater desalination electricity input \[MWh-el/m3-H2O\] Caldera et al 2016: Local cost of seawater RO desalination based on solar PV and windenergy: A global estimate. (https://doi.org/10.1016/j.desal.2016.02.004), Fig. 4.

Seawater desalination fixed operation and maintenance costs \[percent of overnight cost per year\] Caldera et al 2016: Local cost of seawater RO desalination based on solar PV and windenergy: A global estimate. (https://doi.org/10.1016/j.desal.2016.02.004), Table 1.

Seawater desalination lifetime \[years\] Caldera et al 2016: Local cost of seawater RO desalination based on solar PV and windenergy: A global estimate. (https://doi.org/10.1016/j.desal.2016.02.004), Table 1.

Include dispatchable technology 1 Default assumption is based on open cycle natural gas turbine (OCGT)

Dispatchable technology 1 capital cost (overnight) \[EUR/kW\]

Dispatchable technology 1 discount rate \[percent\]

Dispatchable technology 1 emissions factor \[gCO2eq/kWhel\]

Dispatchable technology 1 fixed operation and maintenance costs \[percent of overnight cost per year\]

Dispatchable technology 1 lifetime \[years\]

Dispatchable technology 1 marginal cost (including fuel and VOM) \[EUR/MWhel\]

Include dispatchable technology 2 Default assumption is based on new nuclear EPR reactor in Europe

Dispatchable technology 2 capital cost (overnight) \[EUR/kW\]

Dispatchable technology 2 discount rate \[percent\]

Dispatchable technology 2 emissions factor \[gCO2eq/kWhel\]

Dispatchable technology 2 fixed operation and maintenance costs \[percent of overnight cost per year\]

Dispatchable technology 2 lifetime \[years\]

Dispatchable technology 2 marginal cost (including fuel and VOM) \[EUR/MWhel\]

Industrial heat pump up to 125 C capital cost (overnight) \[EUR/kW\] Danish Energy Agency, technology\_data\_for\_industrial\_process\_heat.xlsx

Industrial heat pump up to 125 C discount rate \[percent\]

Industrial heat pump COP \[percent\] Danish Energy Agency, technology\_data\_for\_industrial\_process\_heat.xlsx

Industrial heat pump up to 125 C fixed operation and maintenance costs \[percent of overnight cost per year\] Danish Energy Agency, technology\_data\_for\_industrial\_process\_heat.xlsx

Industrial heat pump up to 125 C lifetime \[years\] Danish Energy Agency, technology\_data\_for\_industrial\_process\_heat.xlsx

Hydrogen storage compressor and above-ground facilities capital cost (overnight) \[EUR/kW\_H2\] for surface processing unit of 126MGBP with 1 GW\_H2 i.e. 126 MGBP/1 GW\_H2\*1.08/1.02^3\*2 where 1 GBP:1.08 EUR exchange rate and inflation adjustment for 3 years with 2%/a from 2018 to 2015 is done. Cost are doubled because low-input pressure for alkaline electrolysis requires two-stage compression scheme with double the amount of facilities; H21 NoE (2018) report https://www.h21.green/app/uploads/2019/01/H21-NoE-PRINT-PDF-FINAL-1.pdf , table 3-30 and text

Hydrogen storage compressor discount rate \[percent\]

Hydrogen storage compressor and above-ground facilities electricity input \[MWhel/MWh-H2-LHV\] requiring with original report requiring 26.7 MW / 1000 MW\_H2 of single stage compression; since alkaline electrolysis with low output pressure is assumed, assumed here twice the amount for two-stage compression; H21 NoE (2018) report https://www.h21.green/app/uploads/2019/01/H21-NoE-PRINT-PDF-FINAL-1.pdf , text below table 3-29

Hydrogen storage compressor and above-ground facilities fixed operation and maintenance costs \[percent of overnight cost per year\] H21 NoE (2018) report https://www.h21.green/app/uploads/2019/01/H21-NoE-PRINT-PDF-FINAL-1.pdf , text below table 3-30

Hydrogen storage compressor and above-ground facilities lifetime \[years\] Assume same value as for hydrogen\_storage\_tank\_compressor

Hydrogen electrolyser capital cost (overnight) \[EUR/kW\_e\] Danish Energy Agency, data\_sheets\_for\_renewable\_fuels.xlsx

Hydrogen electrolyser discount rate \[percent\]

Hydrogen electrolyser efficiency \["percent, LHV"\] Danish Energy Agency, data\_sheets\_for\_renewable\_fuels.xlsx

Hydrogen electrolyser fixed operation and maintenance costs \[percent of overnight cost per year\] Danish Energy Agency, data\_sheets\_for\_renewable\_fuels.xlsx

Hydrogen electrolyser lifetime \[years\] Danish Energy Agency, data\_sheets\_for\_renewable\_fuels.xlsx

Hydrogen electrolyser water input \[m3-H2O/MWh-H2-LHV\] \-

Hydrogen gas storage overnight cost \[EUR/kWh\] based on underground salt cavern storage CAPEX; based on cavern storage site with total 1.5 TWh storage volume considering all costs except for Surface Processing Unit i.e. 199M GBP/1.5TWh\*1.08/1.02^3 where 1 GBP:1.08 EUR exchange rate and inflation adjustment for 3 years with 2%/a from 2018 to 2015 is done; H21 NoE (2018) report https://www.h21.green/app/uploads/2019/01/H21-NoE-PRINT-PDF-FINAL-1.pdf , table 3-30 and text

Hydrogen energy discount rate \[percent\]

Hydrogen gas storage fixed operation and maintenance costs \[percent of overnight cost per year\] H21 NoE (2018) report https://www.h21.green/app/uploads/2019/01/H21-NoE-PRINT-PDF-FINAL-1.pdf , text below table 3-30

Hydrogen gas storage lifetime \[years\] Danish Energy Agency, technology\_data\_catalogue\_for\_energy\_storage.xlsx

Hydrogen combined cycle turbine capital cost (overnight) \[EUR/kW\] Danish Energy Agency, technology\_data\_for\_el\_and\_dh.xlsx

Hydrogen combined cycle turbine discount rate \[percent\]

Hydrogen combined cycle turbine efficiency \["percent, LHV"\] Danish Energy Agency, technology\_data\_for\_el\_and\_dh.xlsx

Hydrogen combined cycle turbine fixed operation and maintenance costs \[percent of overnight cost per year\] Danish Energy Agency, technology\_data\_for\_el\_and\_dh.xlsx

Hydrogen combined cycle turbine lifetime \[years\] Danish Energy Agency, technology\_data\_for\_el\_and\_dh.xlsx

Liquid carbonaceous fuel storage tank capital cost (overnight) \[EUR/m^3\] Stelter and Nishida 2013: https://webstore.iea.org/insights-series-2013-focus-on-energy-security , pg. 8F .

Liquid carbonaceous fuel storage tank discount rate \[percent\]

Liquid carbonaceous fuel storage tank fixed operation and maintenance costs \[percent of overnight cost per year\] Stelter and Nishida 2013: https://webstore.iea.org/insights-series-2013-focus-on-energy-security , figure 7 and pg. 12 .

Liquid carbonaceous fuel storage tank lifetime \[years\] Stelter and Nishida 2013: https://webstore.iea.org/insights-series-2013-focus-on-energy-security , pg. 11.

Methanol storage (methanolisation for PtMeOH then Allam cycle for MeOHtP)

Methanol synthesis carbon dioxide input \[tCO2/MWh-MeOH-LHV\] based on 0.0702 kgCO2/MJ\_(CH3OH,LHV); Concave & Aramco. (2022). E-Fuels: A techno-economic assessment of European domestic production and imports towards 2050 (Concawe Report 17/22). Retrieved 12 April 2023, from https://www.concawe.eu/publication/e-fuels-a-techno-economic-assessment-of-european-domestic-production-and-imports-towards-2050/ , table 83.

Methanol synthesis capital cost (overnight) \[EUR/MW\_MeOH\] Agora Energiewende (2018): The Future Cost of Electricity-Based Synthetic Fuels (https://www.agora-energiewende.de/en/publications/the-future-cost-of-electricity-based-synthetic-fuels-1/), table 8: “Reference scenario”.

Methanol synthesis discount rate \[percent\]

Methanol synthesis efficiency with respect to hydrogen \[MWh-MeOH-LHV/MWh-H2-LHV\] hydrogen input 1.161 MJ\_H2/MJ\_(CH3OH,LHV); Concave & Aramco. (2022). E-Fuels: A techno-economic assessment of European domestic production and imports towards 2050 (Concawe Report 17/22). Retrieved 12 April 2023, from https://www.concawe.eu/publication/e-fuels-a-techno-economic-assessment-of-european-domestic-production-and-imports-towards-2050/ , table 83.

Methanol synthesis electricity input \[MWhel/MWh-MeOH-LHV\] based on 0.0499 MJ/MJ\_(CH3OH,LHV); Concave & Aramco. (2022). E-Fuels: A techno-economic assessment of European domestic production and imports towards 2050 (Concawe Report 17/22). Retrieved 12 April 2023, from https://www.concawe.eu/publication/e-fuels-a-techno-economic-assessment-of-european-domestic-production-and-imports-towards-2050/ , table 83.

Methanol synthesis fixed operation and maintenance costs \[percent of overnight cost per year\] Agora Energiewende (2018): The Future Cost of Electricity-Based Synthetic Fuels (https://www.agora-energiewende.de/en/publications/the-future-cost-of-electricity-based-synthetic-fuels-1/), section 6.3.2.1.

Methanol synthesis lifetime \[years\] Danish Energy Agency, Technology Data for Renewable Fuels (04/2022), Data sheet “Methanol to Power”.

Methanol synthesis minimum part load \[percent\] Private discussions.

Utility-scale solar PV capital cost (overnight) \[EUR/kW\_e\] Danish Energy Agency, technology\_data\_for\_el\_and\_dh.xlsx

Utility-scale solar PV discount rate \[percent\]

Utility-scale solar PV fixed operation and maintenance costs \[percent of overnight cost per year\] Danish Energy Agency, technology\_data\_for\_el\_and\_dh.xlsx

Utility-scale solar PV lifetime \[years\] Danish Energy Agency, technology\_data\_for\_el\_and\_dh.xlsx

Solar maximum capacity allowed \[MWp\]

Solar minimum capacity allowed \[MWp\]

Onshore wind turbine capital cost (overnight) \[EUR/kW\] Danish Energy Agency, technology\_data\_for\_el\_and\_dh.xlsx

Onshore wind turbine discount rate \[percent\]

Onshore wind turbine fixed operation and maintenance costs \[percent of overnight cost per year\] Danish Energy Agency, technology\_data\_for\_el\_and\_dh.xlsx

Onshore wind turbine lifetime \[years\] Danish Energy Agency, technology\_data\_for\_el\_and\_dh.xlsx

Wind maximum capacity allowed \[MWp\]

Wind minimum capacity allowed \[MWp\]