
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ id; scalar_t__ type; scalar_t__ mode; } ;
typedef TYPE_1__ hid_report_map_t ;


 scalar_t__ hidProtocolMode ;
 TYPE_1__* hid_dev_rpt_tbl ;
 scalar_t__ hid_dev_rpt_tbl_Len ;

__attribute__((used)) static hid_report_map_t *hid_dev_rpt_by_id(uint8_t id, uint8_t type)
{
    hid_report_map_t *rpt = hid_dev_rpt_tbl;

    for (uint8_t i = hid_dev_rpt_tbl_Len; i > 0; i--, rpt++) {
        if (rpt->id == id && rpt->type == type && rpt->mode == hidProtocolMode) {
            return rpt;
        }
    }

    return ((void*)0);
}
