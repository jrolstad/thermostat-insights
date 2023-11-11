# Thermostat Insights
The components in Thermostat Insights enable the collection and storage of large amounts of thermostat data so it is available for further analysis. Components primarily use AWS resources for data storage and analytical capabilities.

# Requirements
* Terraform 1.6 or higher

# Infrastructure
The infrastructure used to implement this solution is defined with Terraform HCL.  See the [deployments/infra](deployments/infra/) directory for more details.

A sample deployment pipelien for this can be seen at [terraform-deploy-prd](.github/workflows/deploy-prd.yml)

# Pipelines
The following pipelines are used by this repository to build, test, and deploy a sample instance.  They are:
|Name|Location|Purpose|
|---|---|---|
|terraform-continuous-integration|[.github/workflows/terraform-ci.yml](.github/workflows//terraform-ci.yml)|Infrastructure code (terraform) CI Build|
|terraform-deploy-prd|[.github/workflows/deploy-prd.yml](.github/workflows/deploy-prd.yml)|Sample deployment pipeline to an AWS Account|

# How To Use
To start using Thermostat Insights on your own resources, use the following steps

## 1. Create Cloud Resources
Using the infrastructure defined via HCL code in the [deployments/infra](deployments/infra/) folder, run this on an AWS Account that you own so the resources are properly configured.

## 2. Capture Data
### Ecobee Data
Once the collection components are created, the data needs to be captured and made ready for analysis.  For Ecobee, this is done by downloading runtime reports and placing into the S3 bucket so they can be used for analysis.  

1. Navigate to the [Ecobee Consumer Portal](https://www.ecobee.com/consumerportal/index.html), authenticating as needed
2. Open the System Report page by selecting Home IQ > System Monitor > Download Data
3. Select the most recent full month's worth of data (Ex: Start Date = October 1, 2023, End Date = October 31, 2023) and press the _Download Data for this Date Range_ button to download the thermostat data as a CSV file
4. Once downloaded, navigate to the [AWS S3 Bucket](https://s3.console.aws.amazon.com/s3/home?region=us-west-2#) created as part of the infrastructure build and upload the csv file from above into the /data folder
5. Repeat the steps above for every month you want to retrieve data for.

## 3. Start Gaining Insights
Using the data exposed via queries and Tableau workbooks, start gaining insights on the data!