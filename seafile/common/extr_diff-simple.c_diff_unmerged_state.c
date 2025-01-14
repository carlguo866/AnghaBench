
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATUS_UNMERGED_BOTH_ADDED ;
 int STATUS_UNMERGED_BOTH_CHANGED ;
 int STATUS_UNMERGED_DFC_I_ADDED_FILE ;
 int STATUS_UNMERGED_DFC_OTHERS_ADDED_FILE ;
 int STATUS_UNMERGED_I_REMOVED ;
 int STATUS_UNMERGED_OTHERS_REMOVED ;
 int seaf_warning (char*) ;

int diff_unmerged_state(int mask)
{
    mask >>= 1;
    switch (mask) {
        case 7:
            return STATUS_UNMERGED_BOTH_CHANGED;
        case 3:
            return STATUS_UNMERGED_OTHERS_REMOVED;
        case 5:
            return STATUS_UNMERGED_I_REMOVED;
        case 6:
            return STATUS_UNMERGED_BOTH_ADDED;
        case 2:
            return STATUS_UNMERGED_DFC_I_ADDED_FILE;
        case 4:
            return STATUS_UNMERGED_DFC_OTHERS_ADDED_FILE;
        default:
            seaf_warning ("Unexpected unmerged case\n");
    }
    return 0;
}
