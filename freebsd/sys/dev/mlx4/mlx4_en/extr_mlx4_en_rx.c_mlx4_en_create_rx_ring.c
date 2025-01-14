
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_13__ {int dma_map; } ;
struct TYPE_12__ {int buf; } ;
struct TYPE_16__ {TYPE_3__ direct; } ;
struct TYPE_15__ {TYPE_7__ buf; } ;
struct mlx4_en_rx_ring {int size; int size_mask; int dma_tag; TYPE_5__* mbuf; TYPE_4__ spare; scalar_t__ buf_size; TYPE_6__ wqres; int buf; int log_stride; scalar_t__ cons; scalar_t__ prod; } ;
struct mlx4_en_rx_mbuf {int dummy; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; TYPE_2__* pdev; } ;
struct TYPE_14__ {int dma_map; } ;
struct TYPE_10__ {int bsddev; } ;
struct TYPE_11__ {TYPE_1__ dev; } ;


 int BUS_SPACE_MAXADDR ;
 int DRV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MJUM16BYTES ;
 int MLX4_EN_MAX_RX_SEGS ;
 int PAGE_SIZE ;
 scalar_t__ TXBB_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,TYPE_5__*,int) ;
 int en_err (struct mlx4_en_priv*,char*) ;
 int ilog2 (int) ;
 int kfree (struct mlx4_en_rx_ring*) ;
 void* kzalloc (int,int ) ;
 int mlx4_alloc_hwq_res (int ,TYPE_6__*,scalar_t__,int) ;
 int mlx4_en_map_buffer (TYPE_7__*) ;
 int mlx4_free_hwq_res (int ,TYPE_6__*,scalar_t__) ;
 int vfree (TYPE_5__*) ;

int mlx4_en_create_rx_ring(struct mlx4_en_priv *priv,
      struct mlx4_en_rx_ring **pring,
      u32 size, int node)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_rx_ring *ring;
 int err;
 int tmp;
 uint32_t x;

        ring = kzalloc(sizeof(struct mlx4_en_rx_ring), GFP_KERNEL);
        if (!ring) {
                en_err(priv, "Failed to allocate RX ring structure\n");
                return -ENOMEM;
        }


 if ((err = -bus_dma_tag_create(
     bus_get_dma_tag(mdev->pdev->dev.bsddev),
     1,
     0,
     BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     MJUM16BYTES,
     MLX4_EN_MAX_RX_SEGS,
     MJUM16BYTES,
     0,
     ((void*)0), ((void*)0),
     &ring->dma_tag))) {
  en_err(priv, "Failed to create DMA tag\n");
  goto err_ring;
 }

 ring->prod = 0;
 ring->cons = 0;
 ring->size = size;
 ring->size_mask = size - 1;

 ring->log_stride = ilog2(sizeof(struct mlx4_en_rx_desc));
 ring->buf_size = (ring->size * sizeof(struct mlx4_en_rx_desc)) + TXBB_SIZE;

 tmp = size * sizeof(struct mlx4_en_rx_mbuf);

        ring->mbuf = kzalloc(tmp, GFP_KERNEL);
        if (ring->mbuf == ((void*)0)) {
                err = -ENOMEM;
                goto err_dma_tag;
        }

 err = -bus_dmamap_create(ring->dma_tag, 0, &ring->spare.dma_map);
 if (err != 0)
  goto err_info;

 for (x = 0; x != size; x++) {
  err = -bus_dmamap_create(ring->dma_tag, 0,
      &ring->mbuf[x].dma_map);
  if (err != 0) {
   while (x--)
    bus_dmamap_destroy(ring->dma_tag,
        ring->mbuf[x].dma_map);
   goto err_info;
  }
 }
 en_dbg(DRV, priv, "Allocated MBUF ring at addr:%p size:%d\n",
   ring->mbuf, tmp);

 err = mlx4_alloc_hwq_res(mdev->dev, &ring->wqres,
     ring->buf_size, 2 * PAGE_SIZE);
 if (err)
  goto err_dma_map;

 err = mlx4_en_map_buffer(&ring->wqres.buf);
 if (err) {
  en_err(priv, "Failed to map RX buffer\n");
  goto err_hwq;
 }
 ring->buf = ring->wqres.buf.direct.buf;
 *pring = ring;
 return 0;

err_hwq:
 mlx4_free_hwq_res(mdev->dev, &ring->wqres, ring->buf_size);
err_dma_map:
 for (x = 0; x != size; x++) {
  bus_dmamap_destroy(ring->dma_tag,
      ring->mbuf[x].dma_map);
 }
 bus_dmamap_destroy(ring->dma_tag, ring->spare.dma_map);
err_info:
 vfree(ring->mbuf);
err_dma_tag:
 bus_dma_tag_destroy(ring->dma_tag);
err_ring:
 kfree(ring);
 return (err);
}
