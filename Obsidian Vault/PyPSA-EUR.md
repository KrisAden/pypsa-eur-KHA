---
title: Getting Started with PyPSA-Eur - Part 1
source: https://www.youtube.com/watch?v=ty47YU1_eeQ
author:
  - "[[Fabian Neumann]]"
published: https://i.ytimg.com/vi/ty47YU1_eeQ/maxresdefault.jpg
created: 2024-11-07
description: PyPSA-Eur is an open model dataset of the European power system at the transmission network level that covers the full ENTSO-E area. It contains alternating ...
tags:
  - clippings
---
![](https://www.youtube.com/watch?v=ty47YU1_eeQ)

[[Martha presentation 13-11-24]]
 
$$
\text{Min } 
\left[
\begin{matrix}
\text{{Yearly}} \\
\text{{system costs}}
\end{matrix}
\right]
=
\text{Min }
\left[
\sum_{n} \left(\text{Annualised capital costs} \right)
+
\sum_{n,t} \left( \text{Marginal costs}\right)
\right]

$$
Subject to:

- Meeting energy demand in every node at every timestep
- Transmission constraints
- Capacity factor time series
- Installed capacity
- CO2 emission reduction targets
- Flexibility from backup

Transmission uses linearized power flow model. These constraints comes from data and is why PyPSA is data-driven modelling.

# Workflow management tool

Snakemake  makes it easy to run and reproduce result

Basic model energy modelling and cost modelling could be as described on pages 1 and 2:

![[Homework 05 KHA 201905079.pdf#page=2]]

[[Tranberg m.fl. - 2018 - Flow-based nodal cost allocation in a heterogeneous highly renewable European electricity network.pdf]]

System costs could probably be sourced from:

[[Victoria m.fl. - 2019 - The role of storage technologies throughout the decarbonisation of the sector-coupled European energ.pdf]]



