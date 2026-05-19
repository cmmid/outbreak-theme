**HPAI modelling challenge model description — first phase**

\[team / institution\]  
\[authors\]  
\[date (YYYY-MM-DD)\]

**Model name:** *\[to fill\]*

**Version:** *\[to fill\]*

**Contact:** *\[email\]*

**Repository / code link (optional):** *\[to fill\]*

# **Model description**

## **Model overview**

Please provide the following key information where relevant for the model used:

* **Type:** \[e.g., mechanistic, statistical, …\]  
* **Stochastic vs deterministic:** *\[to fill\]*  
* **Timestep:** *\[e.g.: discrete (length?), continuous, …\]*  
* **Entities and levels considered:** *\[e.g.: individual, batch, farm, region\]*  
* **Spatial scale:** \[*e.g.: population, metapopulation, …\]*  
* **Interaction mechanisms:** *\[movements, contacts, spatial proximity, environment, etc.\]*  
* **Implementation:** *\[language, framework, runtime\]* 

Please provide a short narrative describing the model structure and key assumptions (please provide a diagram, if relevant):

Describe state variables:

| name | symbol | description |
| :---- | :---- | :---- |
| Susceptible | *S* | Individuals that are healthy and can become infected |
| \[to fill\] | \[to fill\] | \[to fill\] |

## **Processes and parameter values**

For each of the processes below, if relevant to the approach used, describe formulation (text and equations), triggers, randomness, and links to state variables (the list provided is not exhaustive; please feel free to add any additional details).

### **Demographic processes**

* **Entry/exit processes:** *\[births, arrivals, mortality, culling, slaughter, etc.\]*  
* **Production cycles / occupancy / downtime:** *\[to fill\]*  
* **Movements or exchanges (if any):** *\[rules, constraints, scheduling\]*

### **Epidemiological processes**

* **Health states:** *\[if not described in the model overview section\]*  
* **Transmission:** *\[within-unit, between-unit, via movement, environment\]*  
* **Progression and recovery:** *\[to fill\]*  
* **Detection and surveillance (if modelled):** *\[to fill\]*  
* **Disease-induced mortality / production impact (if modelled):** *\[to fill\]*

### **Disease management (control measures)**

* **Measures included** *\[please list all measures included in your model \- if any \- and describe briefly how you implemented each measure\]*

| Management measure | Included? | Implementation description |
| :---- | :---: | ----- |
| National standstill | Y/N |  |
| Suspicion management | Y/N |  |
| Reactive culling | Y/N |  |
| Contact tracing | Y/N |  |
| Zoning: Movement bans in the regulated zones | Y/N |  |
| Zoning: Enhanced biosecurity and detectability in regulated zones | Y/N |  |
| Preventive culling | Y/N |  |
| Pre-mouvement testing in the HRZ | Y/N |  |

### **Parameter table (symbol, description, value, sources)**

Populate the table below. If parameters vary by context (species, production type, region, period...), indicate the indexing explicitly.

| Symbol | description | unit | default value | range / distribution | source |
| :---- | :---- | :---- | :---- | :---- | :---- |
| \[to fill\] | \[to fill\] | \[to fill\] | \[to fill\] | \[to fill\] | \[to fill\] |
| \[to fill\] | \[to fill\] | \[to fill\] | \[to fill\] | \[to fill\] | \[to fill\] |

## **Parameter estimation**

Please describe here the approach used to calibrate your model.

## **Initial conditions**

* **Simulation start date:** *\[to fill\]*  
* **Initial infection seeding:** *\[to fill\]*

## **Simulations and outputs**

* **Number of runs / repetitions:** *\[to fill\]*  
* **Random seed handling:** *\[to fill\]*  
* **Outputs:** *\[to fill\]*  
* **Output format:** *\[tables, figures, files\]*

## 

# **First period**

For each of the requests below, please describe the results you obtained. Keep in mind that you do not have to address all these requests. There is no length limit for this part. 

* ***A general description of the ongoing epidemic, including a table describing the distribution of the outbreaks per species and production types, a timeline of the incidence and a visual representation of the spatial distribution of the outbreaks. (please also provide the visual representation as a separate file in pdf format).***

	*\[to fill\]*

* ***A prediction of the likely temporal and spatial evolution of the epidemic over the following four weeks, assuming the management strategy remains as it is today; if you can have it by farm type, that would be nice.***

	*\[to fill\]*

* ***A characterization of the relative contribution of the chicken farms to the virus spread as compared to the duck farms;*** 

	*\[to fill\]*

* ***An answer with a justification to the following question: given we have reached the culling capacity and that chicken farms likely are key contributor to the epidemic, how epidemiologically-relevant would it be to focus the preventive culling actions on the chicken farms only?***

	*\[to fill\]*

* ***An answer with a justification to the following question: given that outbreak farms are likely more infectious than preventively-culled farms, how epidemiologically-relevant would it be to ignore the preventive culling actions and spend all efforts possible to reduce by 1 day the start of the reactive culling actions in outbreak farms?*** 

	*\[to fill\]*

# **Your opinion on your model**

## **Strengths and limitations of your model**

* *\[to fill\]*

## **How much effort did it take you to complete this phase?**

An estimate (even an approximate one) of the number of person-hours or person-days devoted to the challenge during that phase.

* *\[to fill\]*

# **References**

*\[reference 1\]*  
*\[reference 2\]*