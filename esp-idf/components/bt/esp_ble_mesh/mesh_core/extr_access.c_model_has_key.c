
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;
struct bt_mesh_model {scalar_t__* keys; } ;


 int ARRAY_SIZE (scalar_t__*) ;

__attribute__((used)) static bool model_has_key(struct bt_mesh_model *mod, u16_t key)
{
    int i;

    for (i = 0; i < ARRAY_SIZE(mod->keys); i++) {
        if (mod->keys[i] == key) {
            return 1;
        }
    }

    return 0;
}
