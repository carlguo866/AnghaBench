
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct fimc_fmt {int dummy; } ;
struct fimc_dev {int dummy; } ;
struct file {int dummy; } ;


 int __video_try_or_set_format (struct fimc_dev*,struct v4l2_format*,int,struct fimc_fmt**,struct fimc_fmt**) ;
 struct fimc_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fimc_cap_try_fmt_mplane(struct file *file, void *fh,
       struct v4l2_format *f)
{
 struct fimc_dev *fimc = video_drvdata(file);
 struct fimc_fmt *out_fmt = ((void*)0), *inp_fmt = ((void*)0);

 return __video_try_or_set_format(fimc, f, 1, &inp_fmt, &out_fmt);
}
