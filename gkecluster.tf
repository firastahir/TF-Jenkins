resource "google_container_cluster" "gke-cluster" {
  name               = "my-first-gke-cluster"
  network            = "default"
  zone               = "us-central1-b"
  initial_node_count = 2
}
resource "google_container_node_pool" "extra-pool" {
  name               = "extra-node-pool"
  zone               = "us-central1-b"
  cluster            = "${google_container_cluster.gke-cluster.name}"
  initial_node_count = 1
}
