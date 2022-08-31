data "azurerm_resource_group" "main" {
    name = "ldbc-rg"
}

resource "azurerm_linux_virtual_machine" "driver" {
    name                = "${var.name_prefix}-driver"
    resource_group_name = data.azurerm_resource_group.main.name
    location            = data.azurerm_resource_group.main.location
    size                = var.driver_compute_instance
    admin_username      = var.administrator_username

    network_interface_ids = [
        azurerm_network_interface.driver.id,
    ]

    admin_ssh_key {
        username   = var.administrator_username
        public_key = file(var.administrator_public_key_path)
    }

    os_disk {
        caching              = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }

    source_image_reference {
        publisher = var.linux_publisher
        offer     = var.linux_offer
        sku       = var.linux_sku
        version   = var.linux_version
    }

    tags = {
        environment = var.cost_allocation_tag
    }
}
