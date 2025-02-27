
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int refcount; } ;
typedef TYPE_1__ json_t ;


 int fail (char*) ;
 int json_decref (TYPE_1__*) ;
 TYPE_1__* json_deep_copy (TYPE_1__*) ;
 int json_equal (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* json_false () ;
 TYPE_1__* json_integer (int) ;
 TYPE_1__* json_null () ;
 TYPE_1__* json_real (int) ;
 TYPE_1__* json_string (char*) ;
 TYPE_1__* json_true () ;

__attribute__((used)) static void test_deep_copy_simple(void)
{
    json_t *value, *copy;

    if(json_deep_copy(((void*)0)))
        fail("deep copying NULL doesn't return NULL");


    value = json_true();
    copy = json_deep_copy(value);
    if(value != copy)
        fail("deep copying true failed");
    json_decref(value);
    json_decref(copy);


    value = json_false();
    copy = json_deep_copy(value);
    if(value != copy)
        fail("deep copying false failed");
    json_decref(value);
    json_decref(copy);


    value = json_null();
    copy = json_deep_copy(value);
    if(value != copy)
        fail("deep copying null failed");
    json_decref(value);
    json_decref(copy);


    value = json_string("foo");
    if(!value)
        fail("unable to create a string");
    copy = json_deep_copy(value);
    if(!copy)
        fail("unable to deep copy a string");
    if(copy == value)
        fail("deep copying a string doesn't copy");
    if(!json_equal(copy, value))
        fail("deep copying a string produces an inequal copy");
    if(value->refcount != 1 || copy->refcount != 1)
        fail("invalid refcounts");
    json_decref(value);
    json_decref(copy);


    value = json_integer(543);
    if(!value)
        fail("unable to create an integer");
    copy = json_deep_copy(value);
    if(!copy)
        fail("unable to deep copy an integer");
    if(copy == value)
        fail("deep copying an integer doesn't copy");
    if(!json_equal(copy, value))
        fail("deep copying an integer produces an inequal copy");
    if(value->refcount != 1 || copy->refcount != 1)
        fail("invalid refcounts");
    json_decref(value);
    json_decref(copy);


    value = json_real(123e9);
    if(!value)
        fail("unable to create a real");
    copy = json_deep_copy(value);
    if(!copy)
        fail("unable to deep copy a real");
    if(copy == value)
        fail("deep copying a real doesn't copy");
    if(!json_equal(copy, value))
        fail("deep copying a real produces an inequal copy");
    if(value->refcount != 1 || copy->refcount != 1)
        fail("invalid refcounts");
    json_decref(value);
    json_decref(copy);
}
