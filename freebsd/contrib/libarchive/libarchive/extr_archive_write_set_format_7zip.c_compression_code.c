
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct la_zstream {int (* code ) (struct archive*,struct la_zstream*,int) ;scalar_t__ valid; } ;
struct archive {int dummy; } ;
typedef enum la_zaction { ____Placeholder_la_zaction } la_zaction ;


 int ARCHIVE_OK ;
 int stub1 (struct archive*,struct la_zstream*,int) ;

__attribute__((used)) static int
compression_code(struct archive *a, struct la_zstream *lastrm,
    enum la_zaction action)
{
 if (lastrm->valid)
  return (lastrm->code(a, lastrm, action));
 return (ARCHIVE_OK);
}
