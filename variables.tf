variable "vsphere_connection" {
  type        = map(string)
  description = "Configuration details for connecting to vsphere"

  default = {
    vsphere_user     = "administrator@vsphere.local"
    vsphere_password = ""
    vsphere_server   = "localhost"
  }
}

variable "virtual_machine_template" {
  type        = map(string)
  description = "Configuration details for virtual machine template"

  default = {
    name                = ""
    connection_type     = "ssh"
    connection_user     = "root"
    connection_password = ""
    datacenter          = ""
  }
}

variable "virtual_machine_kubernetes_controller" {
  type        = map(string)
  description = "Configuration details for kubernetes_controller virtual machine"

  default = {
    name          = "kubernetes-controller"
    domain        = "4it.work"
    datastore     = "datastore1"
    network       = "VM Network"
    ip_address    = ""
    netmask       = "24"
    dns_server    = "8.8.8.8"
    gateway       = ""
    resource_pool = ""
    private_key   = "/root/.ssh/id_rsa-terraform-vsphere-kubernetes"
    public_key    = "/root/.ssh/id_rsa-terraform-vsphere-kubernetes.pub"
    num_cpus      = 2
    memory        = 4096
  }
}

variable "virtual_machine_kubernetes_node" {
  type        = map(string)
  description = "Configuration details for kubernetes_controller virtual machine"

  default = {
    count              = 1
    name_prefix        = "kubernetes-node-"
    datastore          = "datastore1"
    network            = "VM Network"
    ip_address_network = "192.168.100.0/24"
    starting_hostnum   = "101"
    dns_server         = "8.8.8.8"
    gateway            = "192.168.100.1"
    resource_pool      = ""
    num_cpus           = 2
    memory             = 4096
  }
}
