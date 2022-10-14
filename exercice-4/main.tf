variable "movies_name" {
  type = list(object({
    title = string,
    comment= string
  }))
  default = [
    {
      title = "The Matrix",
      comment = "The best movie ever"
    },
    {
      title = "The Matrix Reloaded",
      comment = "The second best movie ever"
    },
    {
      title = "The Matrix Revolutions",
      comment = "The third best movie ever"
    }
  ]
}

resource null_resource "local" {
  count = length(var.movies_name)

  provisioner "local-exec" {
    command = "echo 'title: ${var.movies_name[count.index].title}' comment: ${var.movies_name[count.index].comment} >> Movies.txt"
  }
} 
