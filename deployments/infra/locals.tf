locals {
  service_name            = "thermostat_insights_${var.environment}"
  observation_bucket_name = replace("${local.service_name}observationdata", "_", "")
  athena_bucket_name      = replace("${local.service_name}athena", "_", "")
}