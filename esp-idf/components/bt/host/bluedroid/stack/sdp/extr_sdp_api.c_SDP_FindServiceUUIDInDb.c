
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* p_next_rec; TYPE_4__* p_first_attr; } ;
typedef TYPE_3__ tSDP_DISC_REC ;
struct TYPE_10__ {TYPE_4__* p_sub_attr; } ;
struct TYPE_11__ {TYPE_1__ v; } ;
struct TYPE_13__ {scalar_t__ attr_id; struct TYPE_13__* p_next_attr; int attr_len_type; TYPE_2__ attr_value; } ;
typedef TYPE_4__ tSDP_DISC_ATTR ;
struct TYPE_14__ {TYPE_3__* p_first_rec; } ;
typedef TYPE_5__ tSDP_DISCOVERY_DB ;
typedef int tBT_UUID ;


 scalar_t__ ATTR_ID_SERVICE_CLASS_ID_LIST ;
 scalar_t__ ATTR_ID_SERVICE_ID ;
 scalar_t__ DATA_ELE_SEQ_DESC_TYPE ;
 scalar_t__ SDP_DISC_ATTR_TYPE (int ) ;
 scalar_t__ UUID_DESC_TYPE ;
 scalar_t__ sdpu_compare_uuid_with_attr (int *,TYPE_4__*) ;

tSDP_DISC_REC *SDP_FindServiceUUIDInDb (tSDP_DISCOVERY_DB *p_db, tBT_UUID *p_uuid, tSDP_DISC_REC *p_start_rec)
{

    tSDP_DISC_REC *p_rec;
    tSDP_DISC_ATTR *p_attr, *p_sattr;


    if (p_db == ((void*)0)) {
        return (((void*)0));
    }

    if (!p_start_rec) {
        p_rec = p_db->p_first_rec;
    } else {
        p_rec = p_start_rec->p_next_rec;
    }

    while (p_rec) {
        p_attr = p_rec->p_first_attr;
        while (p_attr) {
            if ((p_attr->attr_id == ATTR_ID_SERVICE_CLASS_ID_LIST)
                    && (SDP_DISC_ATTR_TYPE(p_attr->attr_len_type) == DATA_ELE_SEQ_DESC_TYPE)) {
                for (p_sattr = p_attr->attr_value.v.p_sub_attr; p_sattr; p_sattr = p_sattr->p_next_attr) {
                    if (SDP_DISC_ATTR_TYPE(p_sattr->attr_len_type) == UUID_DESC_TYPE) {
                        if (sdpu_compare_uuid_with_attr (p_uuid, p_sattr)) {
                            return (p_rec);
                        }
                    }
                }
                break;
            } else if (p_attr->attr_id == ATTR_ID_SERVICE_ID) {
                if (SDP_DISC_ATTR_TYPE(p_attr->attr_len_type) == UUID_DESC_TYPE ) {
                    if (sdpu_compare_uuid_with_attr (p_uuid, p_attr)) {
                        return (p_rec);
                    }
                }
            }

            p_attr = p_attr->p_next_attr;
        }

        p_rec = p_rec->p_next_rec;
    }


    return (((void*)0));
}
