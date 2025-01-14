
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_cq_ex {int dummy; } ;
struct mlx4_cq {int arm_sn; int flags; int buf; scalar_t__* set_ci_db; struct ibv_cq_ex ibv_cq; scalar_t__* arm_db; int cqe_size; int lock; scalar_t__ cons_index; } ;
struct mlx4_context {int cqe_size; } ;
struct ibv_cq_init_attr_ex {int cqe; int comp_mask; int flags; int wc_flags; } ;
struct ibv_context {int device; } ;


 int CREATE_CQ_SUPPORTED_COMP_MASK ;
 int CREATE_CQ_SUPPORTED_FLAGS ;
 int CREATE_CQ_SUPPORTED_WC_FLAGS ;
 int EINVAL ;
 int ENOTSUP ;
 int IBV_CQ_INIT_ATTR_MASK_FLAGS ;
 int IBV_CREATE_CQ_ATTR_SINGLE_THREADED ;
 int IBV_WC_EX_WITH_COMPLETION_TIMESTAMP ;
 int IBV_WC_EX_WITH_SL ;
 int IBV_WC_EX_WITH_SLID ;
 int MLX4_CQ_FLAGS_EXTENDED ;
 int MLX4_CQ_FLAGS_SINGLE_THREADED ;
 int MLX4_DB_TYPE_CQ ;
 int PTHREAD_PROCESS_PRIVATE ;
 int align_queue_size (int ) ;
 int errno ;
 int free (struct mlx4_cq*) ;
 struct mlx4_cq* malloc (int) ;
 scalar_t__ mlx4_alloc_cq_buf (int ,int *,int,int ) ;
 scalar_t__* mlx4_alloc_db (struct mlx4_context*,int ) ;
 int mlx4_cmd_create_cq (struct ibv_context*,struct ibv_cq_init_attr_ex*,struct mlx4_cq*) ;
 int mlx4_cmd_create_cq_ex (struct ibv_context*,struct ibv_cq_init_attr_ex*,struct mlx4_cq*) ;
 int mlx4_cq_fill_pfns (struct mlx4_cq*,struct ibv_cq_init_attr_ex*) ;
 int mlx4_free_buf (int *) ;
 int mlx4_free_db (struct mlx4_context*,int ,scalar_t__*) ;
 scalar_t__ pthread_spin_init (int *,int ) ;
 struct mlx4_context* to_mctx (struct ibv_context*) ;
 int to_mdev (int ) ;

__attribute__((used)) static struct ibv_cq_ex *create_cq(struct ibv_context *context,
       struct ibv_cq_init_attr_ex *cq_attr,
       int cq_alloc_flags)
{
 struct mlx4_cq *cq;
 int ret;
 struct mlx4_context *mctx = to_mctx(context);


 if (cq_attr->cqe > 0x3fffff) {
  errno = EINVAL;
  return ((void*)0);
 }

 if (cq_attr->comp_mask & ~CREATE_CQ_SUPPORTED_COMP_MASK) {
  errno = ENOTSUP;
  return ((void*)0);
 }

 if (cq_attr->comp_mask & IBV_CQ_INIT_ATTR_MASK_FLAGS &&
     cq_attr->flags & ~CREATE_CQ_SUPPORTED_FLAGS) {
  errno = ENOTSUP;
  return ((void*)0);
 }

 if (cq_attr->wc_flags & ~CREATE_CQ_SUPPORTED_WC_FLAGS)
  return ((void*)0);




 if ((cq_attr->wc_flags & (IBV_WC_EX_WITH_SLID | IBV_WC_EX_WITH_SL)) &&
     (cq_attr->wc_flags & IBV_WC_EX_WITH_COMPLETION_TIMESTAMP)) {
  errno = ENOTSUP;
  return ((void*)0);
 }

 cq = malloc(sizeof *cq);
 if (!cq)
  return ((void*)0);

 cq->cons_index = 0;

 if (pthread_spin_init(&cq->lock, PTHREAD_PROCESS_PRIVATE))
  goto err;

 cq_attr->cqe = align_queue_size(cq_attr->cqe + 1);

 if (mlx4_alloc_cq_buf(to_mdev(context->device), &cq->buf, cq_attr->cqe, mctx->cqe_size))
  goto err;

 cq->cqe_size = mctx->cqe_size;
 cq->set_ci_db = mlx4_alloc_db(to_mctx(context), MLX4_DB_TYPE_CQ);
 if (!cq->set_ci_db)
  goto err_buf;

 cq->arm_db = cq->set_ci_db + 1;
 *cq->arm_db = 0;
 cq->arm_sn = 1;
 *cq->set_ci_db = 0;
 cq->flags = cq_alloc_flags;

 if (cq_attr->comp_mask & IBV_CQ_INIT_ATTR_MASK_FLAGS &&
     cq_attr->flags & IBV_CREATE_CQ_ATTR_SINGLE_THREADED)
  cq->flags |= MLX4_CQ_FLAGS_SINGLE_THREADED;

 --cq_attr->cqe;
 if (cq_alloc_flags & MLX4_CQ_FLAGS_EXTENDED)
  ret = mlx4_cmd_create_cq_ex(context, cq_attr, cq);
 else
  ret = mlx4_cmd_create_cq(context, cq_attr, cq);

 if (ret)
  goto err_db;


 if (cq_alloc_flags & MLX4_CQ_FLAGS_EXTENDED)
  mlx4_cq_fill_pfns(cq, cq_attr);

 return &cq->ibv_cq;

err_db:
 mlx4_free_db(to_mctx(context), MLX4_DB_TYPE_CQ, cq->set_ci_db);

err_buf:
 mlx4_free_buf(&cq->buf);

err:
 free(cq);

 return ((void*)0);
}
