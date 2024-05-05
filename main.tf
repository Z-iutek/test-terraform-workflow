terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
}

resource "local_file" "hello" {
  filename = "hello.py"
  content = "${var.zmienna_1}"

}
