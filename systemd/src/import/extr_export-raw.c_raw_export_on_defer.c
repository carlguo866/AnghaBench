
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;
typedef int RawExport ;


 int raw_export_process (int *) ;

__attribute__((used)) static int raw_export_on_defer(sd_event_source *s, void *userdata) {
        RawExport *i = userdata;

        return raw_export_process(i);
}
