output "gamelift_game_session_queues_id" {
  description = "Map of id values across all gamelift_game_session_queues, keyed the same as var.gamelift_game_session_queues"
  value       = { for k, v in aws_gamelift_game_session_queue.gamelift_game_session_queues : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gamelift_game_session_queues_arn" {
  description = "Map of arn values across all gamelift_game_session_queues, keyed the same as var.gamelift_game_session_queues"
  value       = { for k, v in aws_gamelift_game_session_queue.gamelift_game_session_queues : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "gamelift_game_session_queues_custom_event_data" {
  description = "Map of custom_event_data values across all gamelift_game_session_queues, keyed the same as var.gamelift_game_session_queues"
  value       = { for k, v in aws_gamelift_game_session_queue.gamelift_game_session_queues : k => v.custom_event_data if v.custom_event_data != null && length(v.custom_event_data) > 0 }
}
output "gamelift_game_session_queues_destinations" {
  description = "Map of destinations values across all gamelift_game_session_queues, keyed the same as var.gamelift_game_session_queues"
  value       = { for k, v in aws_gamelift_game_session_queue.gamelift_game_session_queues : k => v.destinations if v.destinations != null && length(v.destinations) > 0 }
}
output "gamelift_game_session_queues_name" {
  description = "Map of name values across all gamelift_game_session_queues, keyed the same as var.gamelift_game_session_queues"
  value       = { for k, v in aws_gamelift_game_session_queue.gamelift_game_session_queues : k => v.name if v.name != null && length(v.name) > 0 }
}
output "gamelift_game_session_queues_notification_target" {
  description = "Map of notification_target values across all gamelift_game_session_queues, keyed the same as var.gamelift_game_session_queues"
  value       = { for k, v in aws_gamelift_game_session_queue.gamelift_game_session_queues : k => v.notification_target if v.notification_target != null && length(v.notification_target) > 0 }
}
output "gamelift_game_session_queues_player_latency_policy" {
  description = "Map of player_latency_policy values across all gamelift_game_session_queues, keyed the same as var.gamelift_game_session_queues"
  value       = { for k, v in aws_gamelift_game_session_queue.gamelift_game_session_queues : k => v.player_latency_policy if v.player_latency_policy != null && length(v.player_latency_policy) > 0 }
}
output "gamelift_game_session_queues_region" {
  description = "Map of region values across all gamelift_game_session_queues, keyed the same as var.gamelift_game_session_queues"
  value       = { for k, v in aws_gamelift_game_session_queue.gamelift_game_session_queues : k => v.region if v.region != null && length(v.region) > 0 }
}
output "gamelift_game_session_queues_tags" {
  description = "Map of tags values across all gamelift_game_session_queues, keyed the same as var.gamelift_game_session_queues"
  value       = { for k, v in aws_gamelift_game_session_queue.gamelift_game_session_queues : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "gamelift_game_session_queues_tags_all" {
  description = "Map of tags_all values across all gamelift_game_session_queues, keyed the same as var.gamelift_game_session_queues"
  value       = { for k, v in aws_gamelift_game_session_queue.gamelift_game_session_queues : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "gamelift_game_session_queues_timeout_in_seconds" {
  description = "Map of timeout_in_seconds values across all gamelift_game_session_queues, keyed the same as var.gamelift_game_session_queues"
  value       = { for k, v in aws_gamelift_game_session_queue.gamelift_game_session_queues : k => v.timeout_in_seconds if v.timeout_in_seconds != null }
}

