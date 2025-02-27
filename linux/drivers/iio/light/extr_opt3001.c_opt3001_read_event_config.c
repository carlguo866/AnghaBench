
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt3001 {scalar_t__ mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 scalar_t__ OPT3001_CONFIGURATION_M_CONTINUOUS ;
 struct opt3001* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int opt3001_read_event_config(struct iio_dev *iio,
  const struct iio_chan_spec *chan, enum iio_event_type type,
  enum iio_event_direction dir)
{
 struct opt3001 *opt = iio_priv(iio);

 return opt->mode == OPT3001_CONFIGURATION_M_CONTINUOUS;
}
