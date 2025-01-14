
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_id_device {int kernel; } ;


 unsigned char PAGE_83 ;
 size_t SCSI_ID_NAA ;
 int SCSI_INQ_BUFF_LEN ;
 char* hex_str ;
 int log_debug (char*,int ) ;
 int memzero (unsigned char*,int) ;
 int scsi_inquiry (struct scsi_id_device*,int,int,unsigned char,unsigned char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int do_scsi_page83_prespc3_inquiry(struct scsi_id_device *dev_scsi, int fd,
                                          char *serial, char *serial_short, int len) {
        int retval;
        int i, j;
        unsigned char page_83[SCSI_INQ_BUFF_LEN];

        memzero(page_83, SCSI_INQ_BUFF_LEN);
        retval = scsi_inquiry(dev_scsi, fd, 1, PAGE_83, page_83, SCSI_INQ_BUFF_LEN);
        if (retval < 0)
                return 1;

        if (page_83[1] != PAGE_83) {
                log_debug("%s: Invalid page 0x83", dev_scsi->kernel);
                return 1;
        }
        if (page_83[6] == 0)
                return 2;

        serial[0] = hex_str[SCSI_ID_NAA];



        i = 4;
        j = strlen(serial);





        while (i < (page_83[3]+4)) {
                serial[j++] = hex_str[(page_83[i] & 0xf0) >> 4];
                serial[j++] = hex_str[page_83[i] & 0x0f];
                i++;
        }
        return 0;
}
