
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum print_arg_type { ____Placeholder_print_arg_type } print_arg_type ;
typedef int PyObject ;


 int PRINT_SYMBOL ;
 scalar_t__ PyCallable_Check (int *) ;
 int * PyDict_GetItemString (int ,char const*) ;
 int PyInt_FromLong (unsigned long long) ;
 int * PyObject_CallObject (int *,int *) ;
 int PyString_FromString (char const*) ;
 int * PyTuple_New (int) ;
 int PyTuple_SetItem (int *,int ,int ) ;
 int Py_DECREF (int *) ;
 int Py_FatalError (char*) ;
 unsigned long long eval_flag (char const*) ;
 int handler_call_die (char const*) ;
 int main_dict ;

__attribute__((used)) static void define_value(enum print_arg_type field_type,
    const char *ev_name,
    const char *field_name,
    const char *field_value,
    const char *field_str)
{
 const char *handler_name = "define_flag_value";
 PyObject *handler, *t, *retval;
 unsigned long long value;
 unsigned n = 0;

 if (field_type == PRINT_SYMBOL)
  handler_name = "define_symbolic_value";

 t = PyTuple_New(4);
 if (!t)
  Py_FatalError("couldn't create Python tuple");

 value = eval_flag(field_value);

 PyTuple_SetItem(t, n++, PyString_FromString(ev_name));
 PyTuple_SetItem(t, n++, PyString_FromString(field_name));
 PyTuple_SetItem(t, n++, PyInt_FromLong(value));
 PyTuple_SetItem(t, n++, PyString_FromString(field_str));

 handler = PyDict_GetItemString(main_dict, handler_name);
 if (handler && PyCallable_Check(handler)) {
  retval = PyObject_CallObject(handler, t);
  if (retval == ((void*)0))
   handler_call_die(handler_name);
 }

 Py_DECREF(t);
}
