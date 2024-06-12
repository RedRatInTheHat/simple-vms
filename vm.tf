data "yandex_compute_image" "image" {
  family = var.image_family
}

resource "yandex_compute_instance" "vm" {
  count                     = var.instances_count
  name                      = "${ var.instance_name }-${ count.index }"
  allow_stopping_for_update = var.allow_stopping_for_update
  platform_id               = var.platform_id
  metadata                  = var.metadata

  resources {
    cores         = var.resources.cores
    memory        = var.resources.memory
    core_fraction = var.resources.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.image.image_id
    }
  }

  scheduling_policy {
    preemptible = var.is_preemptible
  }

  network_interface {
    subnet_id           = element(var.subnet_ids, count.index)
    nat                 = var.has_nat
  }
}