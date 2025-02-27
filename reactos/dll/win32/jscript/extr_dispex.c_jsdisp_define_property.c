
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int flags; int mask; int * setter; scalar_t__ explicit_setter; int * getter; scalar_t__ explicit_getter; int value; scalar_t__ explicit_value; } ;
typedef TYPE_3__ property_desc_t ;
struct TYPE_15__ {int ctx; } ;
typedef TYPE_4__ jsdisp_t ;
struct TYPE_12__ {int * setter; int * getter; } ;
struct TYPE_13__ {TYPE_1__ accessor; void* val; } ;
struct TYPE_16__ {scalar_t__ type; int flags; TYPE_2__ u; } ;
typedef TYPE_5__ dispex_prop_t ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int BOOL ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,scalar_t__) ;
 int JS_E_NONCONFIGURABLE_REDEFINED ;
 int JS_E_NONWRITABLE_MODIFIED ;
 int PROPF_CONFIGURABLE ;
 int PROPF_ENUMERABLE ;
 int PROPF_WRITABLE ;
 scalar_t__ PROP_ACCESSOR ;
 scalar_t__ PROP_DELETED ;
 scalar_t__ PROP_JSVAL ;
 scalar_t__ PROP_PROTREF ;
 int S_OK ;
 int TRACE (char*,int ,int,...) ;
 TYPE_5__* alloc_prop (TYPE_4__*,int const*,scalar_t__,int ) ;
 int debugstr_jsval (void*) ;
 int debugstr_w (int const*) ;
 int find_prop_name (TYPE_4__*,int ,int const*,TYPE_5__**) ;
 int * jsdisp_addref (int *) ;
 int jsdisp_release (int *) ;
 int jsval_copy (int ,void**) ;
 int jsval_release (void*) ;
 int jsval_strict_equal (int ,void*,int *) ;
 void* jsval_undefined () ;
 int string_hash (int const*) ;
 int throw_type_error (int ,int ,int const*) ;

HRESULT jsdisp_define_property(jsdisp_t *obj, const WCHAR *name, property_desc_t *desc)
{
    dispex_prop_t *prop;
    HRESULT hres;

    hres = find_prop_name(obj, string_hash(name), name, &prop);
    if(FAILED(hres))
        return hres;

    if(!prop && !(prop = alloc_prop(obj, name, PROP_DELETED, 0)))
       return E_OUTOFMEMORY;

    if(prop->type == PROP_DELETED || prop->type == PROP_PROTREF) {
        prop->flags = desc->flags;
        if(desc->explicit_getter || desc->explicit_setter) {
            prop->type = PROP_ACCESSOR;
            prop->u.accessor.getter = desc->getter ? jsdisp_addref(desc->getter) : ((void*)0);
            prop->u.accessor.setter = desc->setter ? jsdisp_addref(desc->setter) : ((void*)0);
            TRACE("%s = accessor { get: %p set: %p }\n", debugstr_w(name),
                  prop->u.accessor.getter, prop->u.accessor.setter);
        }else {
            prop->type = PROP_JSVAL;
            if(desc->explicit_value) {
                hres = jsval_copy(desc->value, &prop->u.val);
                if(FAILED(hres))
                    return hres;
            }else {
                prop->u.val = jsval_undefined();
            }
            TRACE("%s = %s\n", debugstr_w(name), debugstr_jsval(prop->u.val));
        }
        return S_OK;
    }

    TRACE("existing prop %s prop flags %x desc flags %x desc mask %x\n", debugstr_w(name),
          prop->flags, desc->flags, desc->mask);

    if(!(prop->flags & PROPF_CONFIGURABLE)) {
        if(((desc->mask & PROPF_CONFIGURABLE) && (desc->flags & PROPF_CONFIGURABLE))
           || ((desc->mask & PROPF_ENUMERABLE)
               && ((desc->flags & PROPF_ENUMERABLE) != (prop->flags & PROPF_ENUMERABLE))))
            return throw_type_error(obj->ctx, JS_E_NONCONFIGURABLE_REDEFINED, name);
    }

    if(desc->explicit_value || (desc->mask & PROPF_WRITABLE)) {
        if(prop->type == PROP_ACCESSOR) {
            if(!(prop->flags & PROPF_CONFIGURABLE))
                return throw_type_error(obj->ctx, JS_E_NONCONFIGURABLE_REDEFINED, name);
            if(prop->u.accessor.getter)
                jsdisp_release(prop->u.accessor.getter);
            if(prop->u.accessor.setter)
                jsdisp_release(prop->u.accessor.setter);

            prop->type = PROP_JSVAL;
            hres = jsval_copy(desc->value, &prop->u.val);
            if(FAILED(hres)) {
                prop->u.val = jsval_undefined();
                return hres;
            }
        }else {
            if(!(prop->flags & PROPF_CONFIGURABLE) && !(prop->flags & PROPF_WRITABLE)) {
                if((desc->mask & PROPF_WRITABLE) && (desc->flags & PROPF_WRITABLE))
                    return throw_type_error(obj->ctx, JS_E_NONWRITABLE_MODIFIED, name);
                if(desc->explicit_value) {
                    if(prop->type == PROP_JSVAL) {
                        BOOL eq;
                        hres = jsval_strict_equal(desc->value, prop->u.val, &eq);
                        if(FAILED(hres))
                            return hres;
                        if(!eq)
                            return throw_type_error(obj->ctx, JS_E_NONWRITABLE_MODIFIED, name);
                    }else {
                        FIXME("redefinition of property type %d\n", prop->type);
                    }
                }
            }
            if(desc->explicit_value) {
                if(prop->type == PROP_JSVAL)
                    jsval_release(prop->u.val);
                else
                    prop->type = PROP_JSVAL;
                hres = jsval_copy(desc->value, &prop->u.val);
                if(FAILED(hres)) {
                    prop->u.val = jsval_undefined();
                    return hres;
                }
            }
        }
    }else if(desc->explicit_getter || desc->explicit_setter) {
        if(prop->type != PROP_ACCESSOR) {
            if(!(prop->flags & PROPF_CONFIGURABLE))
                return throw_type_error(obj->ctx, JS_E_NONCONFIGURABLE_REDEFINED, name);
            if(prop->type == PROP_JSVAL)
                jsval_release(prop->u.val);
            prop->type = PROP_ACCESSOR;
            prop->u.accessor.getter = prop->u.accessor.setter = ((void*)0);
        }else if(!(prop->flags & PROPF_CONFIGURABLE)) {
            if((desc->explicit_getter && desc->getter != prop->u.accessor.getter)
               || (desc->explicit_setter && desc->setter != prop->u.accessor.setter))
                return throw_type_error(obj->ctx, JS_E_NONCONFIGURABLE_REDEFINED, name);
        }

        if(desc->explicit_getter) {
            if(prop->u.accessor.getter) {
                jsdisp_release(prop->u.accessor.getter);
                prop->u.accessor.getter = ((void*)0);
            }
            if(desc->getter)
                prop->u.accessor.getter = jsdisp_addref(desc->getter);
        }
        if(desc->explicit_setter) {
            if(prop->u.accessor.setter) {
                jsdisp_release(prop->u.accessor.setter);
                prop->u.accessor.setter = ((void*)0);
            }
            if(desc->setter)
                prop->u.accessor.setter = jsdisp_addref(desc->setter);
        }
    }

    prop->flags = (prop->flags & ~desc->mask) | (desc->flags & desc->mask);
    return S_OK;
}
