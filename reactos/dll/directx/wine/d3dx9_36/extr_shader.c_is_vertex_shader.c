
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;



__attribute__((used)) static inline BOOL is_vertex_shader(DWORD version)
{
    return (version & 0xffff0000) == 0xfffe0000;
}
