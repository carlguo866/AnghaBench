
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hermes {int dummy; } ;


 int EINVAL ;
 int HERMES_DATA0 ;
 int HERMES_DATA1 ;
 int hermes_bap_seek (struct hermes*,int,int ,int ) ;
 int hermes_read_words (struct hermes*,int,void*,int) ;

__attribute__((used)) static int hermes_bap_pread(struct hermes *hw, int bap, void *buf, int len,
       u16 id, u16 offset)
{
 int dreg = bap ? HERMES_DATA1 : HERMES_DATA0;
 int err = 0;

 if ((len < 0) || (len % 2))
  return -EINVAL;

 err = hermes_bap_seek(hw, bap, id, offset);
 if (err)
  goto out;


 hermes_read_words(hw, dreg, buf, len / 2);

 out:
 return err;
}
