terraform{
    required_version= "~>1.5"
    backend gcs{
        bucket="terraform-bucket-statefile-67"
        prefix  = "terraform/state"
    }
}
