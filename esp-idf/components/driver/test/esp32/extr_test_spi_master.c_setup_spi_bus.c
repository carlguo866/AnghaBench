
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int clock_speed_hz; int duty_cycle_pos; int spics_io_num; int queue_size; int mode; int dummy_bits; int address_bits; int command_bits; } ;
typedef TYPE_1__ spi_device_interface_config_t ;
typedef int spi_device_handle_t ;
struct TYPE_7__ {int mosi_io_num; int miso_io_num; int sclk_io_num; int quadwp_io_num; int quadhd_io_num; int max_transfer_sz; } ;
typedef TYPE_2__ spi_bus_config_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_8__ {int spid_out; } ;


 scalar_t__ ESP_OK ;
 int FUNC_GPIO ;
 int TEST_ASSERT (int) ;
 size_t TEST_SPI_HOST ;
 int printf (char*) ;
 scalar_t__ spi_bus_add_device (size_t,TYPE_1__*,int *) ;
 scalar_t__ spi_bus_initialize (size_t,TYPE_2__*,int) ;
 TYPE_3__* spi_periph_signal ;
 int spitest_gpio_output_sel (int,int ,int ) ;

__attribute__((used)) static spi_device_handle_t setup_spi_bus(int clkspeed, bool dma) {
    spi_bus_config_t buscfg={
        .mosi_io_num=26,
        .miso_io_num=26,
        .sclk_io_num=25,
        .quadwp_io_num=-1,
        .quadhd_io_num=-1,
        .max_transfer_sz=4096*3
    };
    spi_device_interface_config_t devcfg={
        .command_bits=0,
        .address_bits=0,
        .dummy_bits=0,
        .clock_speed_hz=clkspeed,
        .duty_cycle_pos=128,
        .mode=0,
        .spics_io_num=21,
        .queue_size=3,
    };
    esp_err_t ret;
    spi_device_handle_t handle;

    ret=spi_bus_initialize(TEST_SPI_HOST, &buscfg, dma?1:0);
    TEST_ASSERT(ret==ESP_OK);
    ret=spi_bus_add_device(TEST_SPI_HOST, &devcfg, &handle);
    TEST_ASSERT(ret==ESP_OK);

    spitest_gpio_output_sel(26, FUNC_GPIO, spi_periph_signal[TEST_SPI_HOST].spid_out);
    printf("Bus/dev inited.\n");
    return handle;
}
