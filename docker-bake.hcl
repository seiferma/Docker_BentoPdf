variable "BENTOPDF_VERSION" {
  # renovate: datasource=docker depName=bentopdfteam/bentopdf-simple versioning=loose
  default = "2.7.0"
}

group "default" {
  targets = ["default"]
}

target "default" {
  platforms = ["linux/amd64", "linux/arm64"]
  tags = ["quay.io/seiferma/bentopdf-idchanges:${BENTOPDF_VERSION}", "quay.io/seiferma/bentopdf-idchanges:latest"]
  args = {
    BENTOPDF_VERSION = "${BENTOPDF_VERSION}"
  }
}
