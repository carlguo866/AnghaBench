
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct msg_tqh {int dummy; } ;
struct msg {scalar_t__ type; scalar_t__ nfrag; struct msg* frag_owner; int frag_id; int narg; struct msg** frag_seq; int redis; int request; int owner; int keys; int mhdr; } ;
struct mbuf {char* pos; char* start; } ;
struct keypos {scalar_t__ start; scalar_t__ end; } ;
typedef int rstatus_t ;


 int ASSERT (int ) ;
 scalar_t__ CRLF ;
 int CRLF_LEN ;
 scalar_t__ MSG_REQ_MC_GET ;
 scalar_t__ MSG_REQ_MC_GETS ;
 int NC_ENOMEM ;
 int NC_OK ;
 struct mbuf* STAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (struct msg_tqh*,struct msg*,int ) ;
 struct keypos* array_get (int ,int) ;
 int array_n (int ) ;
 int m_tqe ;
 int memcache_append_key (struct msg*,scalar_t__,scalar_t__) ;
 int msg_append (struct msg*,int *,int ) ;
 int msg_backend_idx (struct msg*,scalar_t__,scalar_t__) ;
 int msg_gen_frag_id () ;
 struct msg* msg_get (int ,int ,int ) ;
 int msg_prepend (struct msg*,int *,int) ;
 struct msg** nc_alloc (int) ;
 int nc_free (struct msg**) ;
 struct msg** nc_zalloc (int) ;

__attribute__((used)) static rstatus_t
memcache_fragment_retrieval(struct msg *r, uint32_t ncontinuum,
                            struct msg_tqh *frag_msgq,
                            uint32_t key_step)
{
    struct mbuf *mbuf;
    struct msg **sub_msgs;
    uint32_t i;
    rstatus_t status;

    sub_msgs = nc_zalloc(ncontinuum * sizeof(*sub_msgs));
    if (sub_msgs == ((void*)0)) {
        return NC_ENOMEM;
    }

    ASSERT(r->frag_seq == ((void*)0));
    r->frag_seq = nc_alloc(array_n(r->keys) * sizeof(*r->frag_seq));
    if (r->frag_seq == ((void*)0)) {
        nc_free(sub_msgs);
        return NC_ENOMEM;
    }

    mbuf = STAILQ_FIRST(&r->mhdr);
    mbuf->pos = mbuf->start;







    for (; *(mbuf->pos) != ' ';) {
        mbuf->pos++;
    }
    mbuf->pos++;

    r->frag_id = msg_gen_frag_id();
    r->nfrag = 0;
    r->frag_owner = r;

    for (i = 0; i < array_n(r->keys); i++) {
        struct msg *sub_msg;
        struct keypos *kpos = array_get(r->keys, i);
        uint32_t idx = msg_backend_idx(r, kpos->start, kpos->end - kpos->start);

        if (sub_msgs[idx] == ((void*)0)) {
            sub_msgs[idx] = msg_get(r->owner, r->request, r->redis);
            if (sub_msgs[idx] == ((void*)0)) {
                nc_free(sub_msgs);
                return NC_ENOMEM;
            }
        }
        r->frag_seq[i] = sub_msg = sub_msgs[idx];

        sub_msg->narg++;
        status = memcache_append_key(sub_msg, kpos->start, kpos->end - kpos->start);
        if (status != NC_OK) {
            nc_free(sub_msgs);
            return status;
        }
    }

    for (i = 0; i < ncontinuum; i++) {
        struct msg *sub_msg = sub_msgs[i];
        if (sub_msg == ((void*)0)) {
            continue;
        }


        if (r->type == MSG_REQ_MC_GET) {
            status = msg_prepend(sub_msg, (uint8_t *)"get ", 4);
        } else if (r->type == MSG_REQ_MC_GETS) {
            status = msg_prepend(sub_msg, (uint8_t *)"gets ", 5);
        }
        if (status != NC_OK) {
            nc_free(sub_msgs);
            return status;
        }


        status = msg_append(sub_msg, (uint8_t *)CRLF, CRLF_LEN);
        if (status != NC_OK) {
            nc_free(sub_msgs);
            return status;
        }

        sub_msg->type = r->type;
        sub_msg->frag_id = r->frag_id;
        sub_msg->frag_owner = r->frag_owner;

        TAILQ_INSERT_TAIL(frag_msgq, sub_msg, m_tqe);
        r->nfrag++;
    }

    nc_free(sub_msgs);
    return NC_OK;
}
