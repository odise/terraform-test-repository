data google_compute_network vpc {
  project = var.gcp_project_name
  name    = "default-${var.gcp_region}"
}

resource google_compute_firewall default {
  name    = "example-firewall"
  project = var.gcp_project_name
  network = data.google_compute_network.vpc.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["10180", "18080"]
  }

  source_tags = ["qwerty"]
}
