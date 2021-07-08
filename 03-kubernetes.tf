provider "kubernetes" {
    config_path = local_file.kubernetes_config.filename
}

resource "kubernetes_namespace" "milo_namespace" {
    metadata {
      # El nombre debe ser en minuscula sin espacios
      name = "milos-first-namespace"
    }
}