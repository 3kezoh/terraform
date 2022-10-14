variable "movies_name" {
  type = map(string)
  default = {
    "The Matrix" = "A nice comment",
    "The Matrix Reloaded" = "Another nice comment"
    "The Matrix Revolutions" = "A very nice comment"
  }
}

resource "null_resource" "local" {
  for_each = var.movies_name
 
  provisioner "local-exec" {
    command = "echo 'title: ${each.key}, comment: ${each.value}' >> Movies.txt"
  }
}