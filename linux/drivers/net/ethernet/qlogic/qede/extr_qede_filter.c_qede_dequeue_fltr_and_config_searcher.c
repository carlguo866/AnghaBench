
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qede_dev {TYPE_3__* arfs; int cdev; TYPE_2__* ops; TYPE_1__* pdev; } ;
struct qede_arfs_fltr_node {int buf_len; int mapping; int node; } ;
typedef enum qed_filter_config_mode { ____Placeholder_qed_filter_config_mode } qed_filter_config_mode ;
struct TYPE_6__ {scalar_t__ mode; int filter_count; } ;
struct TYPE_5__ {int (* configure_arfs_searcher ) (int ,int) ;} ;
struct TYPE_4__ {int dev; } ;


 int DMA_TO_DEVICE ;
 scalar_t__ QED_FILTER_CONFIG_MODE_DISABLE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int hlist_del (int *) ;
 int qede_free_arfs_filter (struct qede_dev*,struct qede_arfs_fltr_node*) ;
 int stub1 (int ,int) ;

__attribute__((used)) static void
qede_dequeue_fltr_and_config_searcher(struct qede_dev *edev,
          struct qede_arfs_fltr_node *fltr)
{
 hlist_del(&fltr->node);
 dma_unmap_single(&edev->pdev->dev, fltr->mapping,
    fltr->buf_len, DMA_TO_DEVICE);

 qede_free_arfs_filter(edev, fltr);

 edev->arfs->filter_count--;
 if (!edev->arfs->filter_count &&
     edev->arfs->mode != QED_FILTER_CONFIG_MODE_DISABLE) {
  enum qed_filter_config_mode mode;

  mode = QED_FILTER_CONFIG_MODE_DISABLE;
  edev->ops->configure_arfs_searcher(edev->cdev, mode);
  edev->arfs->mode = QED_FILTER_CONFIG_MODE_DISABLE;
 }
}
