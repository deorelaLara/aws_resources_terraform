resource "aws_api_gateway_rest_api" "DemoAPI"{
    name            = "${var.project_name}-project-${var.environment}-API-Demo"
    description     = "API for demostration purposes - Luz Lara project"
}

resource "aws_api_gateway_resource" "DemoResource" {
    rest_api_id     = aws_api_gateway_rest_api.DemoAPI.id 
    parent_id       = aws_api_gateway_rest_api.DemoAPI.root_resource_id
    path_part       = "users"
}