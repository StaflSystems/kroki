variable "RELEASE_VERSION" {
}

target "kroki" {
  tags = ["staflsystems/kroki:${RELEASE_VERSION}", "staflsystems/kroki:latest"]
}

target "kroki-mermaid" {
  tags = ["staflsystems/kroki-mermaid:${RELEASE_VERSION}", "staflsystems/kroki-mermaid:latest"]
}

target "kroki-bpmn" {
  tags = ["staflsystems/kroki-bpmn:${RELEASE_VERSION}", "staflsystems/kroki-bpmn:latest"]
}

target "kroki-excalidraw" {
  tags = ["staflsystems/kroki-excalidraw:${RELEASE_VERSION}", "staflsystems/kroki-excalidraw:latest"]
}

target "kroki-diagramsnet" {
  tags = ["staflsystems/kroki-diagramsnet:${RELEASE_VERSION}", "staflsystems/kroki-diagramsnet:latest"]
}
