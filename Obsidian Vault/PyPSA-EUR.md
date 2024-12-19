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

# Introduction

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

# Workflow management

Snakemake  makes it easy to run and reproduce results and is a standardized execution method.  If one part of a script needs the output from another part of the script, it is important that they run in the right order.

# PyPSA EUR Features

For the ENTSOE-E area PyPSA EUR contains:
- all DC lines abover 220 kV
- all substations
- all HVDC links
- Inbuilt database of conventional powerplants
- inbuilt electrical demand timeseries
- inbuilt timeseries for renewable generation availability and capacity factors
- Open source data only
- high temporal and spatial solutions

# Configuration

config.yaml is the main "interface" with the model, and it is here that things such as countries and reference year is set. By default reference year is 2013.

Global CO2 Reduction target is present in config. *it might be smart to trace the precedents from this to see how it is implemented and find out how i can be done on an individual level*

To save computation time the nodes should be clustered. *I think this is also where the sector coupling can be turned off, to onlhy look at electricity and not heating.*

# Simplified workflow view

- Preparation
- Simplification
- Solving
- Summarising

Necessary data bundles must be downloaded before use. They add up to 5.5 GB

## Build shapes and Base networks
Retrieves the polygons for every country, and then constructs the base power network with the relevant busses, transformers, lines and links

## Build bus regions
Aggregates resources, busses and links to the nearest nodes using Voronoi celles





Basic model energy modelling and cost modelling could be as described on pages 1 and 2:

![[Homework 05 KHA 201905079.pdf#page=2]]

[[Tranberg m.fl. - 2018 - Flow-based nodal cost allocation in a heterogeneous highly renewable European electricity network.pdf]]

System costs could probably be sourced from:

[[Victoria m.fl. - 2019 - The role of storage technologies throughout the decarbonisation of the sector-coupled European energ.pdf]]





