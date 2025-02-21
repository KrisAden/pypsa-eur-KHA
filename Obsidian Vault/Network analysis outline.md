In the following section the underlying network model will be analysed in order to provide provide a base understanding of the system structure.
The purpose of the energy system network is to act as the “base layer” on which the optimization routines will act. The structure of the network is of critical importance as the limitations and bounds of technologies, availability of resources, transmission capacities, environmental impacts and so forth all have to be predefined before the actual energy system model can be properly defined and constrained.

The network is a precompiled electricity-only network with 37 provided by \cite{horschPyPSAEurOpenOptimisation2020}

This repository contains a number of pre-built and pre-compiled networks made with the PyPSA-Eur default configuration.

The developed network contains 33 nodes, the EU-27 minus Cyprus and Malta (who are islands states and thus not interconnected) as well as Norway, Switzerland, Serbia, Bosnia-Herzegovina, Albania, Montenegro and UK. In addition the following four countries all have two nodes:
Denmark, United Kingdom, Spain and Italy. The nodes can be seen in the figure below:
![[Pasted image 20250221094352.png]]

Each node has a mix of energy generating technologies or "Busses". Included in this model are fifteen different energy producing technologies. These are:

The dispatchable energy-generating technologies included in the model are open cycle gas turbines (OCGT), combined cycle and gas turbines (CCGT), biomass combustion, coal combustion, oil combustion, lignite combustion, and nuclear power production. In addition pumped hydro storage is also considered dispatchable although with the constraint that the energy must have been stored previously.

Non-dispatchable busses include run-of-river, onshore wind, offshore wind (both AC and DC), solar photovoltaic PV, geothermal and hydro energy.

The nodes are connected by 51 AC lines divided into 35 different types of connection and 43 HVDC links. Transformation is handled by 43 different types of transformers at the nodes. In total The network contains 283 generator units and 49 storage units. 