terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

resource "local_file" "hello" {
  filename = "hello.py"
  content = <<-EOT
  def przywitanie(co_wyswietli):
    print(co_wyswietli)

  przywitanie("ciekawy tekst")
  EOT
}
