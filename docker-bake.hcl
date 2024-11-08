variable "REPOSITORY" {
  default = "ghcr.io/duboisf/mockserver"
}

variable "TAG" {
  default = "latest"
}


target "default" {
  context = "."
  annotations = [
    "manifest-descriptor:repository=https://github.com/duboisf/mockserver",
    "manifest-descriptor:branch=fd/fix/arm64",
  ]
  dockerfile = "docker/Dockerfile"
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["${REPOSITORY}:${TAG}"]
}