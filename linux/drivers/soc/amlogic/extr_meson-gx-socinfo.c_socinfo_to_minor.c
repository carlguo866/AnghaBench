
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int FIELD_GET (int ,int ) ;
 int SOCINFO_MINOR ;

__attribute__((used)) static inline unsigned int socinfo_to_minor(u32 socinfo)
{
 return FIELD_GET(SOCINFO_MINOR, socinfo);
}
