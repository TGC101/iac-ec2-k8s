variable "hostname" {
  type=set(string)
  default = [
    "master",
    "node1",
    "node2"
  ]
}



variable "key_devops" {
  default = file("/root/.ssh/id_rsa.pub")
  type = string
}