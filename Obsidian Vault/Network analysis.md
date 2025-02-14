The purpose of the energy system network is to act as the “base layer” on which the optimization routines will act. The structure of the network is of critical importance as the limitations and bounds of technologies, availability of resources, transmission capacities, environmental impacts and so forth all have to be predefined before the actual energy system model can be properly defined and constrained.

Following is an analysis of the network used by Tim Tørnæs in [[Pedersen m.fl. - 2023 - Using Modeling All Alternatives to explore 55% decarbonization scenarios of the European electricity.pdf]]
\cite{pedersenUsingModelingAll2023}
to act as inspiration and a source of knowledge in regards to good practices when designing the network.

In his PhD thesis [[202308 Tim Tørnes Pedersen.pdf]]
\cite{pedersenDecisionSupportRenewable2023}
Tim Tørnæs states the following in regards to the network used in the paper:

"
The developed MAA method is applied to the **PyPSA-Eur-30** model, an ESOM representing the European electricity supply, to demonstrate the use of the method. **The PyPSA-Eur-30 model builds on the PyPSA framework** and represents the European electricity supply **as a 30-node graph (one noder per country) with 50 50 cross-border AC and DC transmission lines.**

**The PyPSA-Eur-30 model is the predecessor to the currently developed PyPSA-EUR and PyPSA-Eur-sec models.** The goal of this paper was primarily to demonstrate the MAA method and its capabilities. Therefore, the PyPSA-Eur-30 model was configured to be complex enough to produce exciting and thrust-worthy results but still simple enough to keep solving times within a reasonable time frame. A more straightforward, rather than highly complex, model would also make the interpretation of model results more straightforward, allowing the focus to be placed on the benefits and potential of applying the MAA method in combination with the energy system model.

”
This combination of complexity to capture meaningful solutions and tendencies and simplicity in order to reduce computational time is of utmost importance.

The developed network contains 33 nodes, the EU-27 minus Cyprus and Malta (who are islands states and thus not interconnected) as well as Norway, Switzerland, Serbia, Bosnia-Herzegovina, Albania, Montenegro and UK.

The energy-generating technologies included in the model are hydro, onshore wind, offshore wind, solar photovoltaic PV, combined cycle and gas turbines (CCGT), open cycle gas turbines (OCGT), coal combustion, lignite combustion, nuclear and oil combustion.

In addition two energy storage technologies are included: Hydrogen and battery storage.

As for the capacities of the energy-generating technologies the system is modelled as a brownfield model including existing energy infrastructure as well as planned infrastructure set to be operational by 2030.



The model is however allowed to expand technology capacity to meet energy demand if cost effective. Here the costs and efficiencies are taken from the Danish energy agency technology