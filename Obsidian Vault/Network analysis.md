The purpose of the energy system network is to act as the “base layer” on which the optimization routines will act. The structure of the network is of critical importance as the limitations and bounds of technologies, availability of resources, transmission capacities, environmental impacts and so forth all have to be predefined before the actual energy system model can be properly defined and constrained.

Following is an analysis of the network used by Tim Tørnæs in [[Pedersen m.fl. - 2023 - Using Modeling All Alternatives to explore 55% decarbonization scenarios of the European electricity.pdf]]
\cite{pedersenUsingModelingAll2023}
to act as inspiration and a source of knowledge in regards to good practices when designing the network.

In his PhD thesis [[202308 Tim Tørnes Pedersen.pdf]]
\cite{pedersenDecisionSupportRenewable2023}
Tim Tørnæs states the following in regards to the network used in the paper:

"
The developed MAA method is applied to the **PyPSA-Eur-30** model, an ESOM representing the European electricity supply, to demonstrate the use of the method. **The PyPSA-Eur-30 model builds on the PyPSA framework** and represents the European electricity supply **as a 30-node graph (one noder per country) with 50 cross-border AC and DC transmission lines.**

**The PyPSA-Eur-30 model is the predecessor to the currently developed PyPSA-EUR and PyPSA-Eur-sec models.** The goal of this paper was primarily to demonstrate the MAA method and its capabilities. Therefore, the PyPSA-Eur-30 model was configured to be complex enough to produce exciting and thrust-worthy results but still simple enough to keep solving times within a reasonable time frame. A more straightforward, rather than highly complex, model would also make the interpretation of model results more straightforward, allowing the focus to be placed on the benefits and potential of applying the MAA method in combination with the energy system model.

”
This combination of complexity to capture meaningful solutions and tendencies and simplicity in order to reduce computational time is of utmost importance.

The developed network contains 33 nodes, the EU-27 minus Cyprus and Malta (who are islands states and thus not interconnected) as well as Norway, Switzerland, Serbia, Bosnia-Herzegovina, Albania, Montenegro and UK.

The energy-generating technologies included in the model are hydro, onshore wind, offshore wind, solar photovoltaic PV, combined cycle and gas turbines (CCGT), open cycle gas turbines (OCGT), coal combustion, lignite combustion, nuclear and oil combustion.

In addition two energy storage technologies are included: Hydrogen and battery storage.

As for the capacities of the energy-generating technologies the system is modelled as a brownfield model including existing energy infrastructure as well as planned infrastructure set to be operational by 2030.

| Country | Offshore Wind | Onshore Wind | Run-off River | Solar PV | CCGT    | OCGT   | Coal    | Lignite | Nuclear | Oil    |
| ------- | ------------- | ------------ | ------------- | -------- | ------- | ------ | ------- | ------- | ------- | ------ |
| AT      | 0             | 3132.7       | 4478.5        | 1438.6   | 2481.7  | 1313.5 | 991.5   | 0       | 0       | 0      |
| BA      | 0             | 50.6         | 0             | 0        | 0       | 0      | 0       | 0       | 0       | 0      |
| BE      | 1185.9        | 2074.8       | 59            | 3984.5   | 3801.9  | 1460.6 | 1524.8  | 0       | 5925.8  | 0      |
| BG      | 0             | 691          | 22.4          | 1029     | 0       | 782    | 4963.7  | 3993    | 2000    | 0      |
| CH      | 0             | 63           | 5280          | 2171     | 0       | 0      | 0       | 0       | 3430    | 0      |
| CZ      | 0             | 316.2        | 40.2          | 2074.3   | 336.8   | 0      | 7184.7  | 725.7   | 2660    | 0      |
| DE      | 6396          | 52447        | 2997          | 45179    | 18120.9 | 8044.3 | 28069.4 | 20833.5 | 15788.4 | 3696.4 |
| DK      | 1708.1        | 4431.2       | 0             | 991      | 100     | 1427.4 | 3629.9  | 0       | 0       | 665    |
| EE      | 0             | 329.8        | 0             | 25.4     | 173     | 250    | 0       | 0       | 0       | 2111   |
| ES      | 0             | 23433.1      | 16.4          | 4753.5   | 24344.3 | 2942.6 | 6519.7  | 3081.2  | 7572.6  | 3533.4 |
| FI      | 67            | 1971.3       | 1289.6        | 123      | 648     | 677.7  | 3039.7  | 0       | 2784    | 1225.4 |
| FR      | 0             | 14898.1      | 5780.8        | 9604     | 5611    | 1066   | 4293.3  | 0       | 63130   | 7172.1 |
| GB      | 8212.7        | 13553.9      | 685.2         | 13107.3  | 32824.3 | 921.5  | 14475   | 0       | 11261   | 2801.9 |
| GR      | 0             | 2877.5       | 103.1         | 2650.6   | 4482    | 417    | 1550    | 3905    | 0       | 0      |
| HR      | 0             | 580.3        | 278.7         | 67.4     | 369.6   | 82.5   | 304.3   | 0       | 0       | 647.8  |
| HU      | 0             | 335          | 19.7          | 724      | 1259.2  | 2368.7 | 42.3    | 1180.2  | 1886.8  | 410    |
| IE      | 25.2          | 3650.9       | 216           | 21.8     | 2946    | 1320   | 855     | 0       | 0       | 907    |
| IT      | 0             | 10230.2      | 6563.7        | 20073.6  | 34438.1 | 6491.8 | 10926.5 | 0       | 0       | 6145   |
| LT      | 0             | 532          | 0             | 81.9     | 0       | 1575   | 0       | 0       | 0       | 0      |
| LU      | 0             | 114.2        | 30.9          | 124.7    | 350.5   | 0      | 0       | 0       | 0       | 0      |
| LV      | 0             | 62.9         | 642.1         | 0        | 1025    | 0      | 0       | 0       | 0       | 0      |
| ME      | 0             | 118          | 0             | 0        | 0       | 0      | 0       | 0       | 0       | 0      |
| MK      | 0             | 37           | 41.6          | 17       | 0       | 0      | 0       | 824     | 0       | 0      |
| NL      | 957           | 3491         | 0             | 4522     | 13582   | 3991   | 5591    | 0       | 492     | 0      |
| NO      | 0             | 1708         | 0             | 53.4     | 450     | 773.1  | 0       | 0       | 0       | 0      |
| PL      | 0             | 5762.1       | 14.4          | 562      | 326     | 1032.9 | 21588.5 | 9406    | 0       | 345    |
| PT      | 0             | 5172.4       | 1615.5        | 665.4    | 3829    | 0      | 1756    | 0       | 0       | 0      |
| RO      | 0             | 3243         | 870.4         | 1385.7   | 1080    | 2282   | 1506    | 4779.2  | 1298    | 87.5   |
| RS      | 0             | 25           | 0             | 0        | 0       | 0      | 0       | 0       | 0       | 0      |
| SE      | 204           | 7097         | 1955.9        | 481      | 708     | 0      | 130     | 0       | 9532    | 2135   |
| SI      | 0             | 0            | 861.3         | 251.8    | 832     | 449    | 246     | 944     | 727     | 143.6  |
| SK      | 0             | 0            | 641.3         | 533      | 648     | 0      | 440     | 486     | 1940    | 0      |

The conventional capacities are from The existing conventional capacities are from Hofmann, F., and Hörsch, J. (2019). Fresna -
powerplantmatching v.0.4.1 \cite{fabianhofmannFRESNAPowerplantmatchingPowerplantmatching2019}

And the existing renewables are from The IRENA online stat tool \cite{irenaIRENASTATOnlineData2023}

The model is however allowed to expand technology capacity to meet energy demand if cost effective. Here the costs and efficiencies are taken from the Danish energy agency technology catalogue \cite{energistyrelsenTeknologikatalogProduktionAf2024}

|                  |                |                          |
| ---------------- | -------------- | ------------------------ |
| Technology       | Efficiency [%] | Emissions [ton CO2/MWhe] |
| OCGT             | 41             | 0.49                     |
| CCGT             | 58             | 0.34                     |
| Coal plant       | 33             | 1                        |
| Lignite plant    | 33             | 1.24                     |
| Oil plant        | 35             | 0.77                     |
| Electrolysis     | 66             | 0                        |
| Fuel Cell        | 50             | 0                        |
| Battery inverter | 96             | 0                        |
 Costs are annualized based on technical lifetime and an assumed discount rate of 7% pr. Year according to the following formula:
$$
a=\frac{1-(1+r)^{{-n}}}{r}
$$
Were r is the discount rate and n is the technical lifetime in years. The expansion costs of new technologies are:

| Technology                              | Capital cost [Eur/kW] | FOM [%/year] | VOM [Eur/MWh] | Lifetime [years] |
| --------------------------------------- | --------------------- | ------------ | ------------- | ---------------- |
| OCGT                                    | 435.2                 | 1.78         | 4.5           | 25               |
| Offshore wind turbine                   | 1573.2                | 2.29         | 2.67          | 30               |
| Offshore wind AC connection submarine   | 2685.0*               | 0            | 0             | 30               |
| Offshore wind AC connection underground | 1342.0*               | 0            | 0             | 30               |
| Offshore wind AC station                | 250                   | 0            | 0             | 30               |
| Offshore wind DC connection submarine   | 2000.0*               | 0            | 0             | 30               |
| Offshore wind DC connection underground | 1000.0*               | 0            | 0             | 30               |
| Offshore wind DC station                | 400                   | 0            | 0             | 30               |
| Onshore wind                            | 1035.6                | 1.22         | 1.35          | 30               |
| Utility scale solar PV                  | 376.3                 | 1.93         | 0             | 40               |
| Electrolysis                            | 550                   | 5.0          | 0             | 25               |
| Fuel cell                               | 1100                  | 5.0          | 0             | 10               |
| Hydrogen storage tank                   | 44.0**                | 1.11         | 0             | 30               |
| Hydrogen underground storage            | 2.0**                 | 0            | 0             | 100              |
| Battery inverter                        | 160                   | 0.34         | 0             | 25               |
| Battery storage                         | 142.0**               | 0            | 0             | 25               |
| Offshore wind                           | 0.0                   | -            | -             | -                |
| Onshore wind                            | 3132.7                | -            | -             | -                |
| Run-off River                           | 4478.5                | -            | -             | -                |
| Solar PV                                | 1438.6                | -            | -             | -                |
| CCGT                                    | 2481.7                | -            | -             | -                |
| OCGT                                    | 1313.5                | -            | -             | -                |
| Coal                                    | 991.5                 | -            | -             | -                |
| Lignite                                 | 0.0                   | -            | -             | -                |
| Nuclear                                 | 0.0                   | -            | -             | -                |
| Oil                                     | 0.0                   | -            | -             | -                |

*Eur/MW/km  
**Eur/kWh

The energy demand-, or Load-timeseries, is found through ENTSOE-E's database at https://www.entsoe.eu/data/power-stats/. It is then decomposed into electricity used for industry and electricity used for residential purposes. This is done according to the method used in \cite{horschPyPSAEurOpenOptimisation2018} section 2.6 where 60% of the Gross domestic product is attributed to industry and 40% is attributed to residency based of th population in the Voronoi cell.

As for the renewable capacity factors this can probably be found through IRENASTAT:
https://pxweb.irena.org/pxweb/en/IRENASTAT

In addition some assumptions must be made:
- perfect competition
- perfect foresight
- long term market equilibrium
- for all nodes and all hours the energy demand must be fulfilled.

The following is known about the network:
"elec_s_37_lv1__Co2L0p55-3H-solar+p3_2030_f.nc"
Which was used to construct the Pareto optimal front.

| Component name   | Number of entries |
| ---------------- | ----------------- |
| Bus              | 118               |
| Carrier          | 15                |
| GlobalConstraint | 2                 |
| Line             | 52                |
| LineType         | 35                |
| TransformerType  | 24                |
| Link             | 494               |
| Load             | 37                |
| Generator        | 406               |
| StorageUnit      | 48                |
| Store            | 81                |
