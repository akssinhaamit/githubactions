variable project {
    description = "Mandatory input - project id where the key_ring needs to be created."
    default = "amitwebsite"
}

variable key_ring_name {
    description = "Display Name of the created key ring"
    default = "test-key-ring"
}

variable key_ring_location {
    description = "Which reagion the Key ring will be created"
    default = "europe-west2"
}

variable crypto_key_name {
    description = "Display name for the crypto key generated"
    default = "test-key-one"
}

variable condition_one {
    description = "The metrics aginst which the condition will be created"
    default = "metric.type=\"logging.googleapis.com/log_entry_count\" AND resource.type=\"k8s_pod\" AND resource.label.\"namespace_name\"=\"default\""
}

variable condition_duration {
    description = "Duration in time for against the condition"
    default = "3600s"
}

variable display_name {
    default = "test"
}

variable log_missing {
    description = "map of objects - whether to enable alerts for log missing for an hour and its duration"
    default = {enabled = true, duration = "3600s"}
}

variable namespace {
  default = "dev"
}

variable labels {
    default = null
}

variable lenght {
    type = list
    default =["soe"]
}