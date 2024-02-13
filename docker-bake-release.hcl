variable "RELEASE_VERSION" {
}

target "kroki" {
  tags = ["ghcr.io/staflsystems/kroki:${RELEASE_VERSION}", "ghcr.io/staflsystems/kroki:latest"]
}
