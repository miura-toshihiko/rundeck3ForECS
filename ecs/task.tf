resource "aws_ecs_task_definition" "service" {
  family                = "rundeck3ForECS"
  container_definitions = "${file("task-definitions/service.json")}"


}
