terraform {
  backend "gcs" {
    bucket = "composed-strata-222317-tfstate"
    credentials = "serviceaccount.json"
  }
}
