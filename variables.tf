variable "gamelift_game_session_queues" {
  description = <<EOT
Map of gamelift_game_session_queues, attributes below
Required:
    - name
Optional:
    - custom_event_data
    - destinations
    - notification_target
    - region
    - tags
    - tags_all
    - timeout_in_seconds
    - player_latency_policy (block):
        - maximum_individual_player_latency_milliseconds (required)
        - policy_duration_seconds (optional)
EOT

  type = map(object({
    name                = string
    custom_event_data   = optional(string)
    destinations        = optional(list(string))
    notification_target = optional(string)
    region              = optional(string)
    tags                = optional(map(string))
    tags_all            = optional(map(string))
    timeout_in_seconds  = optional(number)
    player_latency_policy = optional(list(object({
      maximum_individual_player_latency_milliseconds = number
      policy_duration_seconds                        = optional(number)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.gamelift_game_session_queues : (
        v.custom_event_data == null || (length(v.custom_event_data) >= 0 && length(v.custom_event_data) <= 256)
      )
    ])
    error_message = "must be between 0 and 256 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_game_session_queues : (
        v.player_latency_policy == null || alltrue([for item in v.player_latency_policy : (item.maximum_individual_player_latency_milliseconds >= 0)])
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_game_session_queues : (
        v.player_latency_policy == null || alltrue([for item in v.player_latency_policy : (item.policy_duration_seconds == null || (item.policy_duration_seconds >= 0))])
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.gamelift_game_session_queues : (
        v.timeout_in_seconds == null || (v.timeout_in_seconds >= 10 && v.timeout_in_seconds <= 600)
      )
    ])
    error_message = "must be between 10 and 600"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

