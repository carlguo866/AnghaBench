
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* chip_drv; TYPE_4__* host; } ;
typedef TYPE_2__ esp_flash_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_9__ {int (* set_write_protect ) (TYPE_4__*,int) ;} ;
struct TYPE_7__ {scalar_t__ (* wait_idle ) (TYPE_2__*,int ) ;scalar_t__ (* get_chip_write_protect ) (TYPE_2__*,int*) ;} ;


 int DEFAULT_IDLE_TIMEOUT ;
 scalar_t__ ESP_ERR_NOT_FOUND ;
 scalar_t__ ESP_OK ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_4__*,int) ;
 scalar_t__ stub3 (TYPE_2__*,int*) ;

esp_err_t spi_flash_chip_generic_set_write_protect(esp_flash_t *chip, bool write_protect)
{
    esp_err_t err = ESP_OK;

    err = chip->chip_drv->wait_idle(chip, DEFAULT_IDLE_TIMEOUT);

    if (err == ESP_OK) {
        chip->host->set_write_protect(chip->host, write_protect);
    }

    bool wp_read;
    err = chip->chip_drv->get_chip_write_protect(chip, &wp_read);
    if (err == ESP_OK && wp_read != write_protect) {

        err = ESP_ERR_NOT_FOUND;
    }
    return err;
}
