variable "TAG" {
  default = "latest"
}

group "companion-images" {
  targets = ["kroki-mermaid", "kroki-bpmn", "kroki-excalidraw", "kroki-diagramsnet"]
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
  tags = ["staflsystems/kroki:${TAG}"]
  inherits = ["oci-labels"]
  labels = {
    "org.opencontainers.image.title" = "Kroki"
  }
}

target "kroki-mermaid" {
  context = "mermaid"
  tags = ["staflsystems/kroki-mermaid:${TAG}"]
  inherits = ["oci-labels"]
  labels = {
    "org.opencontainers.image.title" = "Kroki - Mermaid"
  }
}

target "kroki-bpmn" {
  context = "bpmn"
  tags = ["staflsystems/kroki-bpmn:${TAG}"]
  inherits = ["oci-labels"]
  labels = {
    "org.opencontainers.image.title" = "Kroki - BPMN"
  }
}

target "kroki-excalidraw" {
  context = "excalidraw"
  tags = ["staflsystems/kroki-excalidraw:${TAG}"]
  inherits = ["oci-labels"]
  labels = {
    "org.opencontainers.image.title" = "Kroki - Excalidraw"
  }
}

target "kroki-diagramsnet" {
  context = "diagrams.net"
  tags = ["staflsystems/kroki-diagramsnet:${TAG}"]
  inherits = ["oci-labels"]
  labels = {
    "org.opencontainers.image.title" = "Kroki - diagrams.net"
  }
}
