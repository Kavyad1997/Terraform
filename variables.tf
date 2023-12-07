variable "resource_group_name" {
  description = "Name for the resource group"
  default     = "myResourceGroup"
}

variable "location" {
  description = "The Azure location where all resources in this example will be created"
  default     = "East US"
}

variable "vnet_name" {
  description = "Name for the virtual network"
  default     = "example-network"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name for the subnet"
  default     = "internal"
}

variable "subnet_prefixes" {
  description = "Address prefix for the subnet"
  default     = ["10.0.2.0/24"]
}

variable "nic_name" {
  description = "Name for the network interface"
  default     = "example-nic"
}

variable "ip_config_name" {
  description = "Name for the IP configuration"
  default     = "internal"
}

variable "ip_alloc_method" {
  description = "Allocation method for the IP address (Dynamic or Static)"
  default     = "Dynamic"
}

variable "public_ip_name" {
  description = "Name for the public IP address"
  default     = "example-pip"
}


variable "vm_name" {
  description = "Name for the virtual machine"
  default     = "example-machine"
}

variable "vm_size" {
  description = "Size for the virtual machine"
  default     = "Standard_F2"
}

variable "admin_username" {
  description = "Username for the Virtual Machine"
}

variable "admin_password" {
  description = "Password for the Virtual Machine"
}

variable "disable_password_auth" {
  description = "Whether to disable password authentication"
  default     = false
}

variable "os_disk_caching" {
  description = "Caching type for the OS disk"
  default     = "ReadWrite"
}

variable "storage_account_type" {
  description = "Type of storage account to be used for the OS disk"
  default     = "Standard_LRS"
}

variable "image_publisher" {
  description = "Publisher for the source image of the virtual machine"
  default     = "Canonical"
}

variable "image_offer" {
  description = "Offer for the source image of the virtual machine"
  default     = "UbuntuServer"
}

variable "image_sku" {
  description = "SKU for the source image of the virtual machine"
  default     = "16.04-LTS"
}

variable "image_version" {
  description = "Version for the source image of the virtual machine"
  default     = "latest"
}
