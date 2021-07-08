resource "digitalocean_kubernetes_cluster" "milo"{
    name = "milo"
    region = "ncy1"
    version = "1.13.4-do.0"

    node_pool{
        name = "milo_nodes"
        size = "s-1vcpu-2gb"
        node_count = "1"
    }
}