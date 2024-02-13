variable "RELEASE_VERSION" {
}

target "kroki" {
  tags = ["StaflSystems/kroki:${RELEASE_VERSION}", "StaflSystems/kroki:latest"]
}

target "kroki-mermaid" {
  tags = ["StaflSystems/kroki-mermaid:${RELEASE_VERSION}", "StaflSystems/kroki-mermaid:latest"]
}

target "kroki-bpmn" {
  tags = ["StaflSystems/kroki-bpmn:${RELEASE_VERSION}", "StaflSystems/kroki-bpmn:latest"]
}

target "kroki-excalidraw" {
  tags = ["StaflSystems/kroki-excalidraw:${RELEASE_VERSION}", "StaflSystems/kroki-excalidraw:latest"]
}

target "kroki-diagramsnet" {
  tags = ["StaflSystems/kroki-diagramsnet:${RELEASE_VERSION}", "StaflSystems/kroki-diagramsnet:latest"]
}
