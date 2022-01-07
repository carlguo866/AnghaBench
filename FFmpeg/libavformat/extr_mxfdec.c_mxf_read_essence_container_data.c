
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_2__ {void* body_sid; void* index_sid; int package_uid; int package_ul; } ;
typedef TYPE_1__ MXFEssenceContainerData ;
typedef int AVIOContext ;


 void* avio_rb32 (int *) ;
 int avio_read (int *,int ,int) ;

__attribute__((used)) static int mxf_read_essence_container_data(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFEssenceContainerData *essence_data = arg;
    switch(tag) {
        case 0x2701:

            avio_read(pb, essence_data->package_ul, 16);
            avio_read(pb, essence_data->package_uid, 16);
            break;
        case 0x3f06:
            essence_data->index_sid = avio_rb32(pb);
            break;
        case 0x3f07:
            essence_data->body_sid = avio_rb32(pb);
            break;
    }
    return 0;
}
