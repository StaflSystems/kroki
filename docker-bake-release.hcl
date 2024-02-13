variable "RELEASE_VERSION" {
}

target "kroki" {
  tags = ["ghcr.io/staflsystems/kroki:${RELEASE_VERSION}", "ghcr.io/staflsystems/kroki:latest"]
}

target "kroki-mermaid" {
  tags = ["ghcr.io/staflsystems/kroki-mermaid:${RELEASE_VERSION}", "ghcr.io/staflsystems/kroki-mermaid:latest"]
}

target "kroki-bpmn" {
  tags = ["ghcr.io/staflsystems/kroki-bpmn:${RELEASE_VERSION}", "ghcr.io/staflsystems/kroki-bpmn:latest"]
}

target "kroki-excalidraw" {
  tags = ["ghcr.io/staflsystems/kroki-excalidraw:${RELEASE_VERSION}", "ghcr.io/staflsystems/kroki-excalidraw:latest"]
}

target "kroki-diagramsnet" {
  tags = ["ghcr.io/staflsystems/kroki-diagramsnet:${RELEASE_VERSION}", "ghcr.io/staflsystems/kroki-diagramsnet:latest"]
}
