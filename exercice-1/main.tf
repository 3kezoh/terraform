resource "null_resource" "favorite-movie" {
  provisioner "local-exec" {
    command = "echo 'The Matrix' > film.txt"
  }
}