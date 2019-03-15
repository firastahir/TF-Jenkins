provider "google" {
  credentials = "${file("/opt/serviceaccount.json")}"
  project     = "composed-strata-222317"
  region      = "us-central1"
}
