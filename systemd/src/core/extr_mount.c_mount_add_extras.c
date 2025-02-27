
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int description; int id; scalar_t__ fragment_path; } ;
typedef TYPE_1__ Unit ;
struct TYPE_16__ {int from_fragment; int exec_context; int where; } ;
typedef TYPE_2__ Mount ;


 TYPE_1__* UNIT (TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 int mount_add_default_dependencies (TYPE_2__*) ;
 int mount_add_device_dependencies (TYPE_2__*) ;
 int mount_add_mount_dependencies (TYPE_2__*) ;
 int mount_add_quota_dependencies (TYPE_2__*) ;
 int path_simplify (int ,int) ;
 int unit_add_exec_dependencies (TYPE_1__*,int *) ;
 int unit_name_to_path (int ,int *) ;
 int unit_patch_contexts (TYPE_1__*) ;
 int unit_set_default_slice (TYPE_1__*) ;
 int unit_set_description (TYPE_1__*,int ) ;

__attribute__((used)) static int mount_add_extras(Mount *m) {
        Unit *u = UNIT(m);
        int r;

        assert(m);





        if (u->fragment_path)
                m->from_fragment = 1;

        if (!m->where) {
                r = unit_name_to_path(u->id, &m->where);
                if (r < 0)
                        return r;
        }

        path_simplify(m->where, 0);

        if (!u->description) {
                r = unit_set_description(u, m->where);
                if (r < 0)
                        return r;
        }

        r = mount_add_device_dependencies(m);
        if (r < 0)
                return r;

        r = mount_add_mount_dependencies(m);
        if (r < 0)
                return r;

        r = mount_add_quota_dependencies(m);
        if (r < 0)
                return r;

        r = unit_patch_contexts(u);
        if (r < 0)
                return r;

        r = unit_add_exec_dependencies(u, &m->exec_context);
        if (r < 0)
                return r;

        r = unit_set_default_slice(u);
        if (r < 0)
                return r;

        r = mount_add_default_dependencies(m);
        if (r < 0)
                return r;

        return 0;
}
