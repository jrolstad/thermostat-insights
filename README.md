# Thermostat Insights
The thermostat insights solution is a collection of components that enable people and organizations with smart thermostats to capture, analyze, and gain insights of building environmental conditions and trends. By leveraging the capabilities of big data offerings to quickly and easily analyze large amounts of data, a comprehensive set of insights and trends can be obtained across all supported thermostat providers.

# Supported Platforms
The following platforms are supported

|Name|Status|
|---|---|
|[Ecobee](https://www.ecobee.com/en-us/smart-thermostats/)|Available|

# How To Use
The Thermostat Insights solution is broken down into two pieces - data collection and analytics.

## Components
 ![Component Diagram](/docs/components.png)

## Data Collection
To install, configure, and collect data so it is available for analysis, follow information in the [src_ReadMe](src_README.md)

## Analytics
When data is collected, use the [scripts/analysis](scripts/analysis) to extract data either locally or to a Tableau Server so it is available for the pre-built dashboards at [scripts/tableau/workbooks](scripts/tableau/workbooks/).

A working example is built at [Thermostat Data Analysis](https://public.tableau.com/app/profile/josh.rolstad/viz/ThermostatDataAnalysis/Dashboard1) using Tableau Public.

# License
This projects is made available under the [MIT License](LICENSE).