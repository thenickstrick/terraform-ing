locals {
  # map the raw content of the entire sample data file
  raw_content = jsondecode(file("${path.module}/sample.json"))
  # create ref to key to test extracting specific data out of the sample file
  root_node = local.raw_content["zscalerthree.net"]
}

# output "raw_content" {
#   value = local.raw_content
# }

# output the data that was extracted
output "root_node" {
  value = local.root_node
}
