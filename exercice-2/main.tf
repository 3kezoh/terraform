variable "favorite_movie" {
  type = string
  default = "The Matrix"
}

resource "null_resource" "local" {
  provisioner "local-exec" {
    command = "echo '${var.favorite_movie}' > film.txt"
  }
}

output "favorite_movie" {
  description = "Displays the movie I like the most"
  value = "The movie I like the most is ${var.favorite_movie}"
}