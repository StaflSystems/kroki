variable "TAG" {
  default = "latest"
}

group "companion-images" {
  targets = []
}

target "oci-labels" {
  labels = {
    "org.opencontainers.image.description" = "Kroki provides a unified API supporting multiple diagramming formats, making it easy to create diagrams from textual descriptions."
    "org.opencontainers.image.url" = "https://kroki.io"
    "org.opencontainers.image.source" = "https://github.com/staflsystems/kroki"
    "org.opencontainers.image.licenses" = "MIT"
  }
}

target "kroki" {
  context = "server"
  contexts = {
    nomnoml = "./nomnoml"
    vega = "./vega"
    dbml = "./dbml"
    wavedrom = "./wavedrom"
    bytefield = "./bytefield"
    tikz = "./tikz"
  }
  dockerfile = "ops/docker/jdk17-jammy/Dockerfile"
  tags = ["ghcr.io/staflsystems/kroki:${TAG}"]
  inherits = ["oci-labels"]
  labels = {
    "org.opencontainers.image.title" = "Kroki"
  }
}
