resource "digitalocean_kubernetes_cluster" "milo" {
    name = "milo"
    region = "nyc1"
    # Validar que versión de kubernetes están disponibles
    version = "1.21.2-do.2"

    node_pool{
        # El nombre del pool no admite ciertos caracteres ej: "_"
        name = "milo-nodes-pool"
        size = "s-1vcpu-2gb"
        node_count = "1"
    }
}