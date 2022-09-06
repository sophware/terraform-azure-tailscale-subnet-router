module "subnet_router" {
  source = "../terraform-azure-tailscale-subnet-router"

  resource_group_name               = "myresourcegroup"
  vnet_name                         = "myvnet"
  subnet_name                       = "mysubnet"
  storage_account_name              = "mystorageacct"
  container_name                    = "mycontainer"
  container_size                    = "small"
  container_group_name              = "mycontainergroup"
  container_source                  = "ACR"
  tailscale_ACR_repository          = "myacr.azurecr.io/tailscale"
  tailscale_image_tag               = "latest"
  tailscale_ACR_repository_username = "myacrusername"
  tailscale_ACR_repository_password = "supersecretP@ssw0rd"
  tailscale_hostname                = "mytailscalehostname"
  tailscale_advertise_routes        = "10.0.0.0/24"
  tailscale_auth_key                = "tskey-1234567890-ABCDEFGHIJKLMNOPQRSTUVXYZ"
}
