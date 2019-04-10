data "template_file" "ecstask" {
  template = "${file("task-definitions/service.json")}"

  vars {
     ##account_id   = "755575973821"
    account_id   = "755575973822"
  }
}

resource "aws_ecs_task_definition" "service" {
  family                = "rundeck3ForECS"
  container_definitions = "${data.template_file.ecstask.rendered}"

  task_role_arn  = "arn:aws:iam::755575973821:role/ecsTaskExecutionRole"
  execution_role_arn  = "arn:aws:iam::755575973821:role/ecsTaskExecutionRole"
  network_mode ="awsvpc"
  cpu =1024
  memory =2048
    
}
