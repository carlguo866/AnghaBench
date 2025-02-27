
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;
struct pyrf_evlist {struct evlist evlist; } ;
typedef int PyObject ;


 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int*) ;
 int PyErr_SetFromErrno (int ) ;
 int PyExc_OSError ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 scalar_t__ evlist__open (struct evlist*) ;
 int perf_evlist__set_leader (struct evlist*) ;

__attribute__((used)) static PyObject *pyrf_evlist__open(struct pyrf_evlist *pevlist,
       PyObject *args, PyObject *kwargs)
{
 struct evlist *evlist = &pevlist->evlist;
 int group = 0;
 static char *kwlist[] = { "group", ((void*)0) };

 if (!PyArg_ParseTupleAndKeywords(args, kwargs, "|OOii", kwlist, &group))
  return ((void*)0);

 if (group)
  perf_evlist__set_leader(evlist);

 if (evlist__open(evlist) < 0) {
  PyErr_SetFromErrno(PyExc_OSError);
  return ((void*)0);
 }

 Py_INCREF(Py_None);
 return Py_None;
}
