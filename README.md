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
To install, configure, and enable collection of data so it is available for analysis, follow information in the [src_ReadMe](src_README.md)

### Ecobee Data
Once the collection components are created, the data needs to be captured and made ready for analysis.  For Ecobee, this is done by downloading runtime reports and placing into the S3 bucket so they can be used for analysis.  

1. Navigate to the [Ecobee Consumer Portal](https://www.ecobee.com/consumerportal/index.html), authenticating as needed
2. Open the System Report page by selecting Home IQ > System Monitor > Download Data
3. Select the most recent full month's worth of data (Ex: Start Date = October 1, 2023, End Date = October 31, 2023) and press the _Download Data for this Date Range_ button to download the thermostat data as a CSV file
4. Once downloaded, navigate to the [AWS S3 Bucket](https://s3.console.aws.amazon.com/s3/home?region=us-west-2#) created as part of the infrastructure build and upload the csv file from above into the /data folder
5. Repeat the steps above for every month you want to retrieve data for.

## Analytics
When data is collected, use the [scripts/analysis](scripts/analysis) to extract data either locally or to a Tableau Server so it is available for the pre-built dashboards at [scripts/tableau/workbooks](scripts/tableau/workbooks/).

A working example is built at [Thermostat Data Analysis](https://public.tableau.com/app/profile/josh.rolstad/viz/ThermostatDataAnalysis/Dashboard1) using Tableau Public.

# License
This projects is made available under the [MIT License](LICENSE).