In order to begin exploring the solution space it must first be bounded by the governing equations contained within a network model. For the purpose of this project the open source PyPSA-Eur framework was used as a basis for the networks. According to the framework developers "**PyPSA-Eur** is an open model dataset of the European power system at the transmission network level that covers the full ENTSO-E area." \cite{horschPyPSAEurOpenOptimisation2018}

this repository contains pre-built network models produced by the PyPSA-eur default configuration and comes in a varying amount of nodes clustered by the k-means method \cite{BuildingElectricityNetworksa}

The provided levels are:
- 1024
- 512
- 256
- 128
- 37

Here the 37 node network, which will be used due to its lower computational resources required, represent the EU-27 (excluding the island states of Malta and Cyprus) as well as Albania, Bosnia and Hercegovina, Montenegro, North Macedonia, Norway, Serbia, Switzerland, and The United Kingdom.

Additionally the following countries all have 2 nodes: Denmark, Spain, United Kingdom, and Italy. The layout of the nodes can be seen in the figure below:
![[Pasted image 20250221094352.png]]

The clustering of nodes of course raises the question of the effects which the procedure will have upon the outcomes of the optimization problem. According to \cite{schaferScalingTransmissionCapacities2017} 
"By changing the network topology as well as the spatio-temporal pattern of nodal power injections, this coarse-graining procedure has in particular an impact on the power flows and the resulting transmission infrastructure needs proposed by the model."

The paper, which analyses the impacts of this "coarse graining" goes on to find that although the clustering has a noticeable impact on the power flow distribution pattern, the required transmission capacity and cost of tranmission infrastructure scales "weakly" with the spatial resolution of the network. One reason for this is explored in \cite{schyskaSensitivityPowerSystem2021a} where it is explained that the large correlation length of wind and solar patterns means that the clustering of networks does not necessarily lead to less information.
As a result of these findings it is assumed that the 37 node spatial resolution of the  network will be sufficient for the purpose of this paper.

As for the temporal resolution of the load, patterns and the capacity factors of the renewable energy technologies. The precompiled networks have data on an hourly basis. The same paper concludes that temporal resolution  "...leads to significant differences in the optimal capacity deployment..."

This is caused by the fact that decreasing temporal resolution acts as a filter that smoothes out variability and thus leads especially to changes in necessary storage capacity. 