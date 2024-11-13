![[241113_PyPSA3_MartaVictoria_ModernPyPSAapplications.pdf]]

[[PyPSA-EUR]]

This paper contains information and proof of what spatial- and temporal-resolutions are necessary to produce accurate results. [[241113_PyPSA3_MartaVictoria_ModernPyPSAapplications.pdf]]

The simplex algorithm checks all the vertexes of the multidimensional solution space as we know that the global minimum will be situated on a vertex. In this way it iterates like the gradient method over all the vertexes. This only works for convex solution spaces.

Interior point methods moves through the interior of the solution space to find the minimum.

both Gurobi and highs are based on these methods, but Gurobi has more "tweaks" and weights to the system that allows it to be faster and more robust. This is probably based on experience.

an alternative method to try and avoid be trapped in local minima is used in [[Zeyen m.fl. - 2023 - Endogenous learning for green hydrogen in a sector-coupled energy model for Europe.pdf]]


**Spatial resolution**

a good jump-off point is to begin with
$$
n=30
$$
as this means one node pr. country. in general the optimal spatial resolution depends upon the purpose of the research. [[Hörsch and Brown - 2017 - The role of spatial scale in joint optimisations of generation and transmission for European highly.pdf]]

**Temporal resolution**
as for temporal resolution hourly for a year is a good idea [[Schyska m.fl. - 2021 - The sensitivity of power system expansion models.pdf]]
This has been determined through sensitivity analysis
Three hours seems to be the minimum for producing close results  and solar becomes too smooth

*What am i losing by not including sector coupling?*

Robustness of the model to choice of weather year can be seen in [[Gøtske m.fl. - 2024 - Designing a sector-coupled European energy system robust to 60 years of historical weather data.pdf]]


*The Gini coeficcient is a measure of inequality!*
[[Pedersen m.fl. - 2021 - Modeling all alternative solutions for highly renewable energy systems.pdf]]

Is this a good reward function for optimal portfolio theory?

How can i get closer to the cost optimal front through interpolation of my samples?
- Which sampling techniques are good to use for interpolation of high-dimensional systems?

How have they sampled their solution space?

```dataview
list from [[]] and !outgoing([[]])
```


