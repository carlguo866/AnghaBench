
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int flash_size; } ;
struct bxe_softc {TYPE_1__ devinfo; } ;


 int BLOGE (struct bxe_softc*,char*,int,int,...) ;
 int MCPR_NVM_COMMAND_FIRST ;
 int MCPR_NVM_COMMAND_LAST ;
 int NVRAM_PAGE_SIZE ;
 int bxe_acquire_nvram_lock (struct bxe_softc*) ;
 int bxe_disable_nvram_access (struct bxe_softc*) ;
 int bxe_enable_nvram_access (struct bxe_softc*) ;
 int bxe_nvram_write1 (struct bxe_softc*,int,int *,int) ;
 int bxe_nvram_write_dword (struct bxe_softc*,int,int,int) ;
 int bxe_release_nvram_lock (struct bxe_softc*) ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static int
bxe_nvram_write(struct bxe_softc *sc,
                uint32_t offset,
                uint8_t *data_buf,
                int buf_size)
{
    uint32_t cmd_flags;
    uint32_t val;
    uint32_t written_so_far;
    int rc;

    if (buf_size == 1) {
        return (bxe_nvram_write1(sc, offset, data_buf, buf_size));
    }

    if ((offset & 0x03) || (buf_size & 0x03) ) {
        BLOGE(sc, "Invalid parameter, offset 0x%x buf_size 0x%x\n",
              offset, buf_size);
        return (-1);
    }

    if (buf_size == 0) {
        return (0);
    }

    if ((offset + buf_size) > sc->devinfo.flash_size) {
        BLOGE(sc, "Invalid parameter, "
                  "offset 0x%x + buf_size 0x%x > flash_size 0x%x\n",
              offset, buf_size, sc->devinfo.flash_size);
        return (-1);
    }


    rc = bxe_acquire_nvram_lock(sc);
    if (rc) {
        return (rc);
    }


    bxe_enable_nvram_access(sc);

    written_so_far = 0;
    cmd_flags = MCPR_NVM_COMMAND_FIRST;
    while ((written_so_far < buf_size) && (rc == 0)) {
        if (written_so_far == (buf_size - sizeof(uint32_t))) {
            cmd_flags |= MCPR_NVM_COMMAND_LAST;
        } else if (((offset + 4) % NVRAM_PAGE_SIZE) == 0) {
            cmd_flags |= MCPR_NVM_COMMAND_LAST;
        } else if ((offset % NVRAM_PAGE_SIZE) == 0) {
            cmd_flags |= MCPR_NVM_COMMAND_FIRST;
        }

        memcpy(&val, data_buf, 4);

        rc = bxe_nvram_write_dword(sc, offset, val, cmd_flags);


        offset += sizeof(uint32_t);
        data_buf += sizeof(uint32_t);
        written_so_far += sizeof(uint32_t);
        cmd_flags = 0;
    }


    bxe_disable_nvram_access(sc);
    bxe_release_nvram_lock(sc);

    return (rc);
}
