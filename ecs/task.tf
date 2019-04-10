resource "aws_ecs_task_definition" "service" {
  family                = "rundeck3ForECS"
  container_definitions = "${file("task-definitions/service.json")}"

  task_role_arn  = "arn:aws:iam::755575973821:role/ecsTaskExecutionRole"
  execution_role_arn  = "arn:aws:iam::755575973821:role/ecsTaskExecutionRole"
  network_mode ="awsvpc"
  cpu =1024
  memory =2048
    
}
