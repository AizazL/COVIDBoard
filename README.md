# COVID19-Data-Analysis-and-Visualization-2023

![CovidBoard](https://github.com/user-attachments/assets/66b909ef-ac38-4dd5-a570-f29f69d13b88)

## Overview

This project focuses on analyzing and visualizing COVID-19 data from early 2023. The dataset is sourced from [OurWorldInData.org](https://ourworldindata.org/), providing a comprehensive view of global COVID-19 statistics during that period.

The dataset is included with this project as an Excel sheet, and it has been extensively queried and analyzed using SQL. The resulting visualizations were created using Tableau, offering insights into various metrics such as infection rates, death percentages, and data grouped by continent or country.

## Data Visualization

You can explore the interactive data visualization through the following link:

[COVID-19 Data Visualization Dashboard](https://public.tableau.com/views/COVID-19DataAnalysisandVisualization2023/Dashboard1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)

## Dataset Details

- **Source**: [OurWorldInData.org](https://ourworldindata.org/)
- **Period**: Early 2023
- **Contents**: COVID-19 statistics including infection rates, death rates, and more.

The dataset has been attached to this project in an Excel sheet format. SQL queries have been applied to this dataset to interpolate data and calculate additional statistics such as:

- **Death percentage by country**
- **Grouped data by continent/country**

These insights have been further visualized using Tableau to create informative tables, graphs, and maps.

## SQL Queries

The `CovidDatabaseSQLQueries.sql` file contains all the SQL queries used for this analysis. These queries help to:

- Interpolate missing data and calculate additional statistics
- Group data by various dimensions such as continent or country
- Create data structures for visualization purposes

## Future Plans

- **Automated Database Updates**: Implement an automated process to update the database every few months.
- **Expanded Queries**: Develop additional queries to analyze hospitalization/ICU patients in comparison to available resources.
- **Dashboard Enhancement**: Refine the Tableau dashboard for a more compact and efficient design, reducing wasted space.
