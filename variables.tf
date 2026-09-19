variable "region" {}

variable "cluster_name" {}

variable "service_name" {}

variable "vpc_id" {}

variable "private_subnets" {}

variable "service_port" {}

variable "service_cpu" {}

variable "service_memory" {}

variable "service_listener" {}

variable "service_task_execution_role" {}

variable "service_launch_type" {}

variable "service_task_count" {}

variable "environment_variables" {
  type = list(any)
}

variable "capabilities" {
  type = list(any)
}

variable "service_health_check" {
  type = map(any)
}

variable "service_hosts" {}

## Autoscaling variables

variable "scale_type" {}

variable "task_minimum" {}

variable "task_maximum" {}

### Autoscaling of CPU out

variable "scale_out_cpu_threshold" {}

variable "scale_out_adjustment" {}

variable "scale_out_comparison_operator" {}

variable "scale_out_statistic" {}

variable "scale_out_period" {}

variable "scale_out_evaluation_period" {}

variable "scale_out_cooldown" {}

### Autoscaling of CPU in

variable "scale_in_cpu_threshold" {}

variable "scale_in_adjustment" {}

variable "scale_in_comparison_operator" {}

variable "scale_in_statistic" {}

variable "scale_in_period" {}

variable "scale_in_evaluation_period" {}

variable "scale_in_cooldown" {}