
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct bt_mesh_model {int dummy; } ;
struct bt_mesh_elem {int model_count; int vnd_model_count; struct bt_mesh_model* vnd_models; struct bt_mesh_model* models; } ;


 int * bt_mesh_model_find_group (struct bt_mesh_model*,int ) ;

__attribute__((used)) static struct bt_mesh_model *bt_mesh_elem_find_group(struct bt_mesh_elem *elem,
        u16_t group_addr)
{
    struct bt_mesh_model *model;
    u16_t *match;
    int i;

    for (i = 0; i < elem->model_count; i++) {
        model = &elem->models[i];

        match = bt_mesh_model_find_group(model, group_addr);
        if (match) {
            return model;
        }
    }

    for (i = 0; i < elem->vnd_model_count; i++) {
        model = &elem->vnd_models[i];

        match = bt_mesh_model_find_group(model, group_addr);
        if (match) {
            return model;
        }
    }

    return ((void*)0);
}
