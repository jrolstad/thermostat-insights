resource "aws_glue_catalog_table" "observation" {
  name          = "observation"
  database_name = aws_glue_catalog_database.object_db.name

  table_type = "EXTERNAL_TABLE"

  parameters = {
    "classification"         = "csv"
    "skip.header.line.count" = "6"
  }

  storage_descriptor {
    location      = "s3://${local.observation_bucket_name}/data"
    input_format  = "org.apache.hadoop.mapred.TextInputFormat"
    output_format = "org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat"

    ser_de_info {
      name                  = "csv"
      serialization_library = "org.apache.hadoop.hive.serde2.OpenCSVSerde"

      parameters = {
        "separatorChar" = ","
      }
    }

    columns {
      name = "date"
      type = "string"
    }
    columns {
      name = "time"
      type = "string"
    }
    columns {
      name = "system_setting"
      type = "string"
    }
    columns {
      name = "system_mode"
      type = "string"
    }
    columns {
      name = "calendar_event"
      type = "string"
    }
    columns {
      name = "program_mode"
      type = "string"
    }
    columns {
      name = "cool_set_temp"
      type = "string"
    }
    columns {
      name = "heat_set_temp"
      type = "string"
    }
    columns {
      name = "current_temp"
      type = "string"
    }
    columns {
      name = "current_humidity"
      type = "string"
    }
    columns {
      name = "outdoor_temp"
      type = "string"
    }
    columns {
      name = "outdoor_wind_speed"
      type = "string"
    }
    columns {
      name = "cool_stage1_seconds"
      type = "string"
    }
    columns {
      name = "heat_stage1_seconds"
      type = "string"
    }
    columns {
      name = "fan_seconds"
      type = "string"
    }
    columns {
      name = "dm_offset"
      type = "string"
    }
    columns {
      name = "thermostat_temp"
      type = "string"
    }
    columns {
      name = "thermostat_humidity"
      type = "string"
    }
    columns {
      name = "thermostat_motion"
      type = "string"
    }
    columns {
      name = "sensor1_temp"
      type = "string"
    }
    columns {
      name = "sensor1_motion"
      type = "string"
    }
    columns {
      name = "sensor2_temp"
      type = "string"
    }
    columns {
      name = "sensor2_motion"
      type = "string"
    }
    columns {
      name = "sensor3_temp"
      type = "string"
    }
    columns {
      name = "sensor3_motion"
      type = "string"
    }

  }
}