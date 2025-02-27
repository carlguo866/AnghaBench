
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int t ;
struct TYPE_4__ {int length; char* tx_buffer; char* rx_buffer; int addr; int cmd; } ;
typedef TYPE_1__ spi_transaction_t ;
typedef int spi_device_handle_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int MALLOC_CAP_DMA ;
 int TEST_ASSERT (int) ;
 int free (char*) ;
 char* heap_caps_malloc (int,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int printf (char*,...) ;
 int rand () ;
 scalar_t__ spi_device_transmit (int ,TYPE_1__*) ;
 int srand (int) ;

__attribute__((used)) static int spi_test(spi_device_handle_t handle, int num_bytes) {
    esp_err_t ret;
    int x;
    bool success = 1;
    srand(num_bytes);
    char *sendbuf=heap_caps_malloc((num_bytes+3)&(~3), MALLOC_CAP_DMA);
    char *recvbuf=heap_caps_malloc((num_bytes+3)&(~3), MALLOC_CAP_DMA);
    for (x=0; x<num_bytes; x++) {
        sendbuf[x]=rand()&0xff;
        recvbuf[x]=0x55;
    }

    spi_transaction_t t;
    memset(&t, 0, sizeof(t));
    t.length=num_bytes*8;
    t.tx_buffer=sendbuf;
    t.rx_buffer=recvbuf;
    t.addr=0xA00000000000000FL;
    t.cmd=0x55;

    printf("Transmitting %d bytes...\n", num_bytes);
    ret=spi_device_transmit(handle, &t);
    TEST_ASSERT(ret==ESP_OK);

    srand(num_bytes);
    for (x=0; x<num_bytes; x++) {
        if (sendbuf[x]!=(rand()&0xff)) {
            printf("Huh? Sendbuf corrupted at byte %d\n", x);
            TEST_ASSERT(0);
        }
        if (sendbuf[x]!=recvbuf[x]) break;
    }
    if (x!=num_bytes) {
        int from=x-16;
        if (from<0) from=0;
        success = 0;
        printf("Error at %d! Sent vs recved: (starting from %d)\n" , x, from);
        for (int i=0; i<32; i++) {
            if (i+from<num_bytes) printf("%02X ", sendbuf[from+i]);
        }
        printf("\n");
        for (int i=0; i<32; i++) {
            if (i+from<num_bytes) printf("%02X ", recvbuf[from+i]);
        }
        printf("\n");
    }

    if (success) printf("Success!\n");
    free(sendbuf);
    free(recvbuf);
    return success;
}
