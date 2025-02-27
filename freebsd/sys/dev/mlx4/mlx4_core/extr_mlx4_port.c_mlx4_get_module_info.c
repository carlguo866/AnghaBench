
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct mlx4_mad_ifc {int method; int class_version; int mgmt_class; int base_version; scalar_t__ data; int status; void* attr_id; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cmd_mailbox {int dma; scalar_t__ buf; } ;
struct mlx4_cable_info {int data; void* size; scalar_t__ i2c_addr; scalar_t__ page_num; void* dev_mem_address; } ;


 scalar_t__ CABLE_INF_I2C_ADDR ;
 scalar_t__ I2C_ADDR_HIGH ;
 scalar_t__ I2C_ADDR_LOW ;
 scalar_t__ I2C_PAGE_SIZE ;
 scalar_t__ IS_ERR (struct mlx4_cmd_mailbox*) ;
 scalar_t__ MAD_STATUS_2_CABLE_ERR (int) ;
 int MLX4_CMD_MAD_IFC ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_C ;
 scalar_t__ MODULE_INFO_MAX_READ ;
 int PTR_ERR (struct mlx4_cmd_mailbox*) ;
 int be16_to_cpu (int ) ;
 int cable_info_mad_err_str (int) ;
 void* cpu_to_be16 (scalar_t__) ;
 int memcpy (int *,int ,scalar_t__) ;
 struct mlx4_cmd_mailbox* mlx4_alloc_cmd_mailbox (struct mlx4_dev*) ;
 int mlx4_cmd_box (struct mlx4_dev*,int ,int ,int ,int,int ,int ,int ) ;
 int mlx4_free_cmd_mailbox (struct mlx4_dev*,struct mlx4_cmd_mailbox*) ;
 int mlx4_warn (struct mlx4_dev*,char*,int,int ,scalar_t__,scalar_t__,scalar_t__,int,int ) ;

int mlx4_get_module_info(struct mlx4_dev *dev, u8 port,
    u16 offset, u16 size, u8 *data)
{
 struct mlx4_cmd_mailbox *inbox, *outbox;
 struct mlx4_mad_ifc *inmad, *outmad;
 struct mlx4_cable_info *cable_info;
 u16 i2c_addr;
 int ret;

 if (size > MODULE_INFO_MAX_READ)
  size = MODULE_INFO_MAX_READ;

 inbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(inbox))
  return PTR_ERR(inbox);

 outbox = mlx4_alloc_cmd_mailbox(dev);
 if (IS_ERR(outbox)) {
  mlx4_free_cmd_mailbox(dev, inbox);
  return PTR_ERR(outbox);
 }

 inmad = (struct mlx4_mad_ifc *)(inbox->buf);
 outmad = (struct mlx4_mad_ifc *)(outbox->buf);

 inmad->method = 0x1;
 inmad->class_version = 0x1;
 inmad->mgmt_class = 0x1;
 inmad->base_version = 0x1;
 inmad->attr_id = cpu_to_be16(0xFF60);

 if (offset < I2C_PAGE_SIZE && offset + size > I2C_PAGE_SIZE)



  size -= offset + size - I2C_PAGE_SIZE;

 i2c_addr = I2C_ADDR_LOW;
 if (offset >= I2C_PAGE_SIZE) {

  i2c_addr = I2C_ADDR_HIGH;
  offset -= I2C_PAGE_SIZE;
 }

 cable_info = (struct mlx4_cable_info *)inmad->data;
 cable_info->dev_mem_address = cpu_to_be16(offset);
 cable_info->page_num = 0;
 cable_info->i2c_addr = i2c_addr;
 cable_info->size = cpu_to_be16(size);

 ret = mlx4_cmd_box(dev, inbox->dma, outbox->dma, port, 3,
      MLX4_CMD_MAD_IFC, MLX4_CMD_TIME_CLASS_C,
      MLX4_CMD_NATIVE);
 if (ret)
  goto out;

 if (be16_to_cpu(outmad->status)) {

  ret = be16_to_cpu(outmad->status);






  if (i2c_addr == I2C_ADDR_HIGH &&
      MAD_STATUS_2_CABLE_ERR(ret) == CABLE_INF_I2C_ADDR)



   ret = 0;
  else
   ret = -ret;
  goto out;
 }
 cable_info = (struct mlx4_cable_info *)outmad->data;
 memcpy(data, cable_info->data, size);
 ret = size;
out:
 mlx4_free_cmd_mailbox(dev, inbox);
 mlx4_free_cmd_mailbox(dev, outbox);
 return ret;
}
