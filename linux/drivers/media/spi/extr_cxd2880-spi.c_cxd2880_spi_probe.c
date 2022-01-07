
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_11__ {int (* add_frontend ) (TYPE_1__*,TYPE_2__*) ;int (* connect_frontend ) (TYPE_1__*,TYPE_2__*) ;int (* remove_frontend ) (TYPE_1__*,TYPE_2__*) ;int capabilities; } ;
struct TYPE_14__ {TYPE_1__ dmx; int stop_feed; int start_feed; void* feednum; void* filternum; struct cxd2880_dvb_spi* priv; } ;
struct TYPE_13__ {scalar_t__ capabilities; TYPE_1__* demux; void* filternum; } ;
struct TYPE_12__ {int source; } ;
struct cxd2880_dvb_spi {int adapter; int dvb_fe; TYPE_9__ demux; TYPE_7__ dmxdev; TYPE_2__ dmx_fe; int spi_mutex; struct spi_device* spi; int * vcc_supply; } ;
struct cxd2880_config {int * spi_mutex; struct spi_device* spi; } ;


 void* CXD2880_MAX_FILTER_SIZE ;
 int DMX_FRONTEND_0 ;
 int DMX_TS_FILTERING ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int THIS_MODULE ;
 int adapter_nr ;
 int cxd2880_attach ;
 int cxd2880_start_feed ;
 int cxd2880_stop_feed ;
 int dev_set_drvdata (int *,struct cxd2880_dvb_spi*) ;
 int * devm_regulator_get_optional (int *,char*) ;
 int dvb_attach (int ,int *,struct cxd2880_config*) ;
 int dvb_dmx_init (TYPE_9__*) ;
 int dvb_dmx_release (TYPE_9__*) ;
 int dvb_dmxdev_init (TYPE_7__*,int *) ;
 int dvb_dmxdev_release (TYPE_7__*) ;
 int dvb_frontend_detach (int *) ;
 int dvb_register_adapter (int *,char*,int ,int *,int ) ;
 int dvb_register_frontend (int *,int *) ;
 int dvb_unregister_adapter (int *) ;
 int dvb_unregister_frontend (int *) ;
 int kfree (struct cxd2880_dvb_spi*) ;
 struct cxd2880_dvb_spi* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int regulator_enable (int *) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;
 int stub2 (TYPE_1__*,TYPE_2__*) ;
 int stub3 (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int
cxd2880_spi_probe(struct spi_device *spi)
{
 int ret;
 struct cxd2880_dvb_spi *dvb_spi = ((void*)0);
 struct cxd2880_config config;

 if (!spi) {
  pr_err("invalid arg.\n");
  return -EINVAL;
 }

 dvb_spi = kzalloc(sizeof(struct cxd2880_dvb_spi), GFP_KERNEL);
 if (!dvb_spi)
  return -ENOMEM;

 dvb_spi->vcc_supply = devm_regulator_get_optional(&spi->dev, "vcc");
 if (IS_ERR(dvb_spi->vcc_supply)) {
  if (PTR_ERR(dvb_spi->vcc_supply) == -EPROBE_DEFER) {
   ret = -EPROBE_DEFER;
   goto fail_adapter;
  }
  dvb_spi->vcc_supply = ((void*)0);
 } else {
  ret = regulator_enable(dvb_spi->vcc_supply);
  if (ret)
   goto fail_adapter;
 }

 dvb_spi->spi = spi;
 mutex_init(&dvb_spi->spi_mutex);
 dev_set_drvdata(&spi->dev, dvb_spi);
 config.spi = spi;
 config.spi_mutex = &dvb_spi->spi_mutex;

 ret = dvb_register_adapter(&dvb_spi->adapter,
       "CXD2880",
       THIS_MODULE,
       &spi->dev,
       adapter_nr);
 if (ret < 0) {
  pr_err("dvb_register_adapter() failed\n");
  goto fail_adapter;
 }

 if (!dvb_attach(cxd2880_attach, &dvb_spi->dvb_fe, &config)) {
  pr_err("cxd2880_attach failed\n");
  ret = -ENODEV;
  goto fail_attach;
 }

 ret = dvb_register_frontend(&dvb_spi->adapter,
        &dvb_spi->dvb_fe);
 if (ret < 0) {
  pr_err("dvb_register_frontend() failed\n");
  goto fail_frontend;
 }

 dvb_spi->demux.dmx.capabilities = DMX_TS_FILTERING;
 dvb_spi->demux.priv = dvb_spi;
 dvb_spi->demux.filternum = CXD2880_MAX_FILTER_SIZE;
 dvb_spi->demux.feednum = CXD2880_MAX_FILTER_SIZE;
 dvb_spi->demux.start_feed = cxd2880_start_feed;
 dvb_spi->demux.stop_feed = cxd2880_stop_feed;

 ret = dvb_dmx_init(&dvb_spi->demux);
 if (ret < 0) {
  pr_err("dvb_dmx_init() failed\n");
  goto fail_dmx;
 }

 dvb_spi->dmxdev.filternum = CXD2880_MAX_FILTER_SIZE;
 dvb_spi->dmxdev.demux = &dvb_spi->demux.dmx;
 dvb_spi->dmxdev.capabilities = 0;
 ret = dvb_dmxdev_init(&dvb_spi->dmxdev,
         &dvb_spi->adapter);
 if (ret < 0) {
  pr_err("dvb_dmxdev_init() failed\n");
  goto fail_dmxdev;
 }

 dvb_spi->dmx_fe.source = DMX_FRONTEND_0;
 ret = dvb_spi->demux.dmx.add_frontend(&dvb_spi->demux.dmx,
           &dvb_spi->dmx_fe);
 if (ret < 0) {
  pr_err("add_frontend() failed\n");
  goto fail_dmx_fe;
 }

 ret = dvb_spi->demux.dmx.connect_frontend(&dvb_spi->demux.dmx,
        &dvb_spi->dmx_fe);
 if (ret < 0) {
  pr_err("dvb_register_frontend() failed\n");
  goto fail_fe_conn;
 }

 pr_info("Sony CXD2880 has successfully attached.\n");

 return 0;

fail_fe_conn:
 dvb_spi->demux.dmx.remove_frontend(&dvb_spi->demux.dmx,
        &dvb_spi->dmx_fe);
fail_dmx_fe:
 dvb_dmxdev_release(&dvb_spi->dmxdev);
fail_dmxdev:
 dvb_dmx_release(&dvb_spi->demux);
fail_dmx:
 dvb_unregister_frontend(&dvb_spi->dvb_fe);
fail_frontend:
 dvb_frontend_detach(&dvb_spi->dvb_fe);
fail_attach:
 dvb_unregister_adapter(&dvb_spi->adapter);
fail_adapter:
 kfree(dvb_spi);
 return ret;
}
