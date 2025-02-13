# Problem to Solve
Time to head west! The United States’s “Pacific Northwest” is a northwest region including the states of Oregon, Washington, and Northern Idaho. The region’s cooler temperatures and cloudy skies attract athletes and outdoor adventurers of all kinds. Recently, though, the increasing prevalence of wild fires has threatened the region’s once pristine air quality.

In this problem, in a file called air.R in a folder called air, you’ll learn about indicators of air quality and use R to analyze common air pollutants in the state of Oregon.

## Schema

In air.csv, you’ll find data from the United States Environmental Protection Agency’s National Emissions Inventory. This inventory tracks all emissions of certain pollutants (i.e., harmful substances released into the air).

Some pollutants are called “criteria air pollutants” (CAPs) by the United States Environmental Protection Agency (EPA). These pollutants are more harmful than others. According to the EPA:

Criteria air pollutants are found all over the U.S. They can harm your health and the environment, and cause property damage.

Ozone, carbon monoxide, lead, and nitrogen dioxide are all examples of criteria air pollutants.

air.csv shows the amount of criteria air pollutants emitted in Oregon. The data is very detailed! For each county (i.e., municipality), you can see how much of each pollutant is emitted by different sources, like school buses or wildfires.

Pay attention to these columns:

- State-County, which is the county in which the emission took place
- POLLUTANT, which is the pollutant being emitted
- Emissions (Tons), which is the amount of the pollutant emitted (in tons)
- SCC Levels 1–4, which describes the source of the pollutant, from more general (Level 1) to more specific (Level 4)

## Specification

### 1.R
In 1.R, read `air.csv` into a tibble called `air`, renaming and selecting the columns you need. In particular, ensure the `air` tibble includes only the following columns:

- `state`, renamed from `State`
- `county`, renamed from `State-County`
- `pollutant`, renamed from `POLLUTANT`
- `emissions`, renamed from `Emissions (Tons)`
- `level_1`, renamed from `SCC LEVEL 1`
- `level_2`, renamed from `SCC LEVEL 2`
- `level_3`, renamed from `SCC LEVEL 3`
- `level_4`, renamed from `SCC LEVEL 4`

Save the resulting `air` tibble, using `save`, in a file called `air.RData`. You’ll use this tibble in the remaining .R files.

### 2.R
To sustainably improve air quality, analysts often focus their efforts on particular sources of pollutants. To identify which sources might need the most attention, find the largest sources of pollutants in Oregon.

In 2.R, load the `air` tibble from `air.RData` with `load`. Update the tibble by sorting all rows by the `emissions` column, highest value to lowest.

Save the resulting `air` tibble, using `save`, in a file called `2.RData`.

### 3.R
In addition to focusing on the largest sources of pollutants, analysts might focus on particular geographic regions. Choose one of the counties in Oregon from this list. Find all sources of pollutants in that county.

In 3.R, load the `air` tibble from `air.RData` with `load`. Transform the tibble so that it only includes data for the county of your choice.

Save the resulting `air` tibble, using `save`, in a file called `3.RData`.

### 4.R
Combine your analyses from 2.R and 3.R.

In 4.R, load the `air` tibble from `air.RData` with `load`. Transform the tibble so that it only includes data for the county of your choice and sorts the data by the `emissions` column, highest value to lowest.

Save the resulting `air` tibble, using `save`, in a file called `4.RData`.

### 5.R
So far, you’ve identified the largest sources of pollutants across the entire state of Oregon, as well as within a single county. Now, find the single largest pollutant source for each county.

In 5.R, load the `air` tibble from `air.RData` with `load`. Transform the tibble so that it includes the single row with the highest value in the `emissions` column for each county.

Save the resulting `air` tibble, using `save`, in a file called `5.RData`.

### 6.R
Some pollutants tend to be emitted at higher rates than others. For each pollutant, find its total emissions across the entire state of Oregon.

In 6.R, load the `air` tibble from `air.RData` with `load`. Summarize the data in the tibble to find the total emissions for each pollutant. Sort the pollutants from highest to lowest emissions.

The resulting tibble should have two columns, one called `pollutant` and one called `emissions`. For example:

| pollutant                     | emissions |
|-------------------------------|-----------|
| Carbon Monoxide               | 8070435   |
| Volatile Organic Compounds     | 2368213   |
| PM10 Primary (Filt + Cond)    | 1266915   |
| …                             | …         |

Save the resulting `air` tibble, using `save`, in a file called `6.RData`.

### 7.R
In professional air quality reports, analysts will often calculate total emissions for broad categories of sources. In fact, the `level_1` column in the `air` tibble lists the broad category in which a specific source is included! For each category of source in `level_1`, calculate the total emissions of each pollutant.

Want to learn more about these categories?
In 7.R, load the `air` tibble from `air.RData` with `load`. Transform the tibble to find the total emissions of each pollutant from each of the `level_1` source categories. Sort the rows first alphabetically by source name, then alphabetically by pollutant name.

The resulting tibble should have three columns, one called `source`, one called `pollutant`, and one called `emissions`. For example:

| source                     | pollutant                     | emissions |
|---------------------------|-------------------------------|-----------|
| Industrial Processes       | Carbon Monoxide               | 1460      |
| Industrial Processes       | Nitrogen Oxides               | 9.96      |
| Miscellaneous Area Sources | Ammonia                       | 161756    |
| Miscellaneous Area Sources | Carbon Monoxide               | 7385998   |
| …                         | …                             | …         |

Save the resulting `air` tibble, using `save`, in a file called `7.RData`.