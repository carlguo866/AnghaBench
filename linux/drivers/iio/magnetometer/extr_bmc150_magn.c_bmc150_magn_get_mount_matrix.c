
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_mount_matrix {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct bmc150_magn_data {struct iio_mount_matrix const orientation; } ;


 struct bmc150_magn_data* iio_priv (struct iio_dev const*) ;

__attribute__((used)) static const struct iio_mount_matrix *
bmc150_magn_get_mount_matrix(const struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan)
{
 struct bmc150_magn_data *data = iio_priv(indio_dev);

 return &data->orientation;
}
