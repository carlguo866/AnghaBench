
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdic_priv {scalar_t__ stream_count; int lock; struct imx_media_pixfmt const** cc; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {size_t pad; int which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct imx_media_pixfmt {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 size_t VDIC_NUM_PADS ;
 size_t VDIC_SINK_PAD_DIRECT ;
 size_t VDIC_SINK_PAD_IDMAC ;
 size_t VDIC_SRC_PAD_DIRECT ;
 struct v4l2_mbus_framefmt* __vdic_get_fmt (struct vdic_priv*,struct v4l2_subdev_pad_config*,size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vdic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int vdic_try_fmt (struct vdic_priv*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*,struct imx_media_pixfmt const**) ;

__attribute__((used)) static int vdic_set_fmt(struct v4l2_subdev *sd,
   struct v4l2_subdev_pad_config *cfg,
   struct v4l2_subdev_format *sdformat)
{
 struct vdic_priv *priv = v4l2_get_subdevdata(sd);
 const struct imx_media_pixfmt *cc;
 struct v4l2_mbus_framefmt *fmt;
 int ret = 0;

 if (sdformat->pad >= VDIC_NUM_PADS)
  return -EINVAL;

 mutex_lock(&priv->lock);

 if (priv->stream_count > 0) {
  ret = -EBUSY;
  goto out;
 }

 vdic_try_fmt(priv, cfg, sdformat, &cc);

 fmt = __vdic_get_fmt(priv, cfg, sdformat->pad, sdformat->which);
 *fmt = sdformat->format;


 if (sdformat->pad == VDIC_SINK_PAD_DIRECT ||
     sdformat->pad == VDIC_SINK_PAD_IDMAC) {
  const struct imx_media_pixfmt *outcc;
  struct v4l2_mbus_framefmt *outfmt;
  struct v4l2_subdev_format format;

  format.pad = VDIC_SRC_PAD_DIRECT;
  format.which = sdformat->which;
  format.format = sdformat->format;
  vdic_try_fmt(priv, cfg, &format, &outcc);

  outfmt = __vdic_get_fmt(priv, cfg, VDIC_SRC_PAD_DIRECT,
     sdformat->which);
  *outfmt = format.format;
  if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
   priv->cc[VDIC_SRC_PAD_DIRECT] = outcc;
 }

 if (sdformat->which == V4L2_SUBDEV_FORMAT_ACTIVE)
  priv->cc[sdformat->pad] = cc;
out:
 mutex_unlock(&priv->lock);
 return ret;
}
