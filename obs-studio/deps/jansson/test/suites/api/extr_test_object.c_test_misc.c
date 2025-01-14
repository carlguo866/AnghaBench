
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;


 int fail (char*) ;
 int json_decref (int *) ;
 int * json_integer (int) ;
 int json_integer_value (int *) ;
 int json_is_integer (int *) ;
 int * json_object () ;
 scalar_t__ json_object_del (int *,char*) ;
 int * json_object_get (int *,char*) ;
 scalar_t__ json_object_set (int *,char*,int *) ;
 scalar_t__ json_object_set_new (int *,char*,int *) ;
 int * json_string (char*) ;

__attribute__((used)) static void test_misc()
{
    json_t *object, *string, *other_string, *value;

    object = json_object();
    string = json_string("test");
    other_string = json_string("other");

    if(!object)
        fail("unable to create object");
    if(!string || !other_string)
        fail("unable to create string");

    if(json_object_get(object, "a"))
        fail("value for nonexisting key");

    if(json_object_set(object, "a", string))
        fail("unable to set value");

    if(!json_object_set(object, ((void*)0), string))
        fail("able to set NULL key");

    if(json_object_del(object, "a"))
        fail("unable to del the only key");

    if(json_object_set(object, "a", string))
        fail("unable to set value");

    if(!json_object_set(object, "a", ((void*)0)))
        fail("able to set NULL value");


    if(!json_object_set(object, "a\xefz", string))
        fail("able to set invalid unicode key");

    value = json_object_get(object, "a");
    if(!value)
        fail("no value for existing key");
    if(value != string)
        fail("got different value than what was added");


    if(json_object_set(object, "b", string) ||
       json_object_set(object, "lp", string) ||
       json_object_set(object, "px", string))
        fail("unable to set value");

    value = json_object_get(object, "a");
    if(!value)
        fail("no value for existing key");
    if(value != string)
        fail("got different value than what was added");

    if(json_object_set(object, "a", other_string))
        fail("unable to replace an existing key");

    value = json_object_get(object, "a");
    if(!value)
        fail("no value for existing key");
    if(value != other_string)
        fail("got different value than what was set");

    if(!json_object_del(object, "nonexisting"))
        fail("able to delete a nonexisting key");

    if(json_object_del(object, "px"))
        fail("unable to delete an existing key");

    if(json_object_del(object, "a"))
        fail("unable to delete an existing key");

    if(json_object_del(object, "lp"))
        fail("unable to delete an existing key");




    if(json_object_set(object, "a", string))
        fail("unable to set value");

    if(json_object_set(object, "lp", string))
        fail("unable to set value");

    if(json_object_set(object, "px", string))
        fail("unable to set value");

    if(json_object_set(object, "c", string))
        fail("unable to set value");

    if(json_object_set(object, "d", string))
        fail("unable to set value");

    if(json_object_set(object, "e", string))
        fail("unable to set value");


    if(json_object_set_new(object, "foo", json_integer(123)))
        fail("unable to set new value");

    value = json_object_get(object, "foo");
    if(!json_is_integer(value) || json_integer_value(value) != 123)
        fail("json_object_set_new works incorrectly");

    if(!json_object_set_new(object, ((void*)0), json_integer(432)))
        fail("able to set_new NULL key");

    if(!json_object_set_new(object, "foo", ((void*)0)))
        fail("able to set_new NULL value");

    json_decref(string);
    json_decref(other_string);
    json_decref(object);
}
