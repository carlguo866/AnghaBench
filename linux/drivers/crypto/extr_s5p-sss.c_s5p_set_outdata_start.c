
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct s5p_aes_dev {struct scatterlist* sg_dst_cpy; int dev; } ;
struct ablkcipher_request {struct scatterlist* dst; } ;


 int dev_dbg (int ,char*) ;
 int s5p_free_sg_cpy (struct s5p_aes_dev*,struct scatterlist**) ;
 int s5p_is_sg_aligned (struct scatterlist*) ;
 int s5p_make_sg_cpy (struct s5p_aes_dev*,struct scatterlist*,struct scatterlist**) ;
 int s5p_set_outdata (struct s5p_aes_dev*,struct scatterlist*) ;

__attribute__((used)) static int s5p_set_outdata_start(struct s5p_aes_dev *dev,
     struct ablkcipher_request *req)
{
 struct scatterlist *sg;
 int err;

 dev->sg_dst_cpy = ((void*)0);
 sg = req->dst;
 if (!s5p_is_sg_aligned(sg)) {
  dev_dbg(dev->dev,
   "At least one unaligned dest scatter list, making a copy\n");
  err = s5p_make_sg_cpy(dev, sg, &dev->sg_dst_cpy);
  if (err)
   return err;

  sg = dev->sg_dst_cpy;
 }

 err = s5p_set_outdata(dev, sg);
 if (err) {
  s5p_free_sg_cpy(dev, &dev->sg_dst_cpy);
  return err;
 }

 return 0;
}
