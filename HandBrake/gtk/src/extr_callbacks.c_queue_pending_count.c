
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gint ;
typedef int GhbValue ;


 scalar_t__ GHB_QUEUE_PENDING ;
 int * ghb_array_get (int *,scalar_t__) ;
 scalar_t__ ghb_array_len (int *) ;
 int * ghb_dict_get (int *,char*) ;
 scalar_t__ ghb_dict_get_int (int *,char*) ;

__attribute__((used)) static gint
queue_pending_count(GhbValue *queue)
{
    gint nn, ii, count;
    GhbValue *queueDict, *uiDict;
    gint status;

    nn = 0;
    count = ghb_array_len(queue);
    for (ii = 0; ii < count; ii++)
    {

        queueDict = ghb_array_get(queue, ii);
        uiDict = ghb_dict_get(queueDict, "uiSettings");
        status = ghb_dict_get_int(uiDict, "job_status");
        if (status == GHB_QUEUE_PENDING)
        {
            nn++;
        }
    }
    return nn;
}
