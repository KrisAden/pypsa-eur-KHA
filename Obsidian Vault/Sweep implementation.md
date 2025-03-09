In order to begin exploring the solution space it must first be bounded by the governing equations contained within a network model. For the purpose of this project the open source PyPSA-Eur framework was used as a basis for the networks. According to the framework developers "**PyPSA-Eur** is an open model dataset of the European power system at the transmission network level that covers the full ENTSO-E area." \cite{horschPyPSAEurOpenOptimisation2018}

this repository contains pre-built network models produced by the PyPSA-eur default configuration and comes in a varying amount of nodes clustered by the k-means method \cite{BuildingElectricityNetworksa}

The provided levels are:
- 1024
- 512
- 256
- 128
- 37

Here the 37 node network represent the EU-27 (excluding the island states of Malta and Cyprus) as well as Albania, Bosnia and Hercegovina, Montenegro, North Macedonia, Norway, Serbia, Switzerland, and The United Kingdom.

Additionally the following countries all have 2 nodes: Denmark, Spain, United Kingdom, and Italy. The layout of the nodes can be seen in the figure below:
![[Pasted image 20250221094352.png]]

