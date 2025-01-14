
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
typedef int tag ;
struct lfs2_mattr {int tag; void* buffer; } ;
struct lfs2_diskoff {scalar_t__ off; int block; } ;
struct lfs2_attr {int type; void const* buffer; int size; } ;
typedef int lfs2_tag_t ;
struct TYPE_9__ {int tag; } ;
struct TYPE_7__ {TYPE_3__ gpending; int rcache; } ;
typedef TYPE_1__ lfs2_t ;
typedef scalar_t__ lfs2_off_t ;
struct TYPE_8__ {scalar_t__ off; int * pair; } ;
typedef TYPE_2__ lfs2_mdir_t ;
typedef int int16_t ;


 int LFS2_BLOCK_NULL ;
 scalar_t__ LFS2_FROM_MOVE ;
 scalar_t__ LFS2_FROM_NOOP ;
 scalar_t__ LFS2_FROM_USERATTRS ;
 int LFS2_MKTAG (int,int,int ) ;
 int LFS2_TYPE_STRUCT ;
 int LFS2_TYPE_USERATTR ;
 int lfs2_bd_read (TYPE_1__*,int *,int *,int,int ,scalar_t__,int*,int) ;
 int lfs2_dir_traverse_filter (void*,int,void const*) ;
 int lfs2_frombe32 (int) ;
 scalar_t__ lfs2_gstate_hasmovehere (TYPE_3__*,int *) ;
 scalar_t__ lfs2_tag_dsize (int) ;
 int lfs2_tag_id (int) ;
 unsigned int lfs2_tag_size (int) ;
 scalar_t__ lfs2_tag_type3 (int) ;

__attribute__((used)) static int lfs2_dir_traverse(lfs2_t *lfs2,
        const lfs2_mdir_t *dir, lfs2_off_t off, lfs2_tag_t ptag,
        const struct lfs2_mattr *attrs, int attrcount, bool hasseenmove,
        lfs2_tag_t tmask, lfs2_tag_t ttag,
        uint16_t begin, uint16_t end, int16_t diff,
        int (*cb)(void *data, lfs2_tag_t tag, const void *buffer), void *data) {

    while (1) {
        lfs2_tag_t tag;
        const void *buffer;
        struct lfs2_diskoff disk;
        if (off+lfs2_tag_dsize(ptag) < dir->off) {
            off += lfs2_tag_dsize(ptag);
            int err = lfs2_bd_read(lfs2,
                    ((void*)0), &lfs2->rcache, sizeof(tag),
                    dir->pair[0], off, &tag, sizeof(tag));
            if (err) {
                return err;
            }

            tag = (lfs2_frombe32(tag) ^ ptag) | 0x80000000;
            disk.block = dir->pair[0];
            disk.off = off+sizeof(lfs2_tag_t);
            buffer = &disk;
            ptag = tag;
        } else if (attrcount > 0) {
            tag = attrs[0].tag;
            buffer = attrs[0].buffer;
            attrs += 1;
            attrcount -= 1;
        } else if (!hasseenmove &&
                lfs2_gstate_hasmovehere(&lfs2->gpending, dir->pair)) {


            tag = lfs2->gpending.tag & LFS2_MKTAG(0x7ff, 0x3ff, 0);
            buffer = ((void*)0);
            hasseenmove = 1;
        } else {
            return 0;
        }

        lfs2_tag_t mask = LFS2_MKTAG(0x7ff, 0, 0);
        if ((mask & tmask & tag) != (mask & tmask & ttag)) {
            continue;
        }



        if (lfs2_tag_id(tmask) != 0) {

            int filter = lfs2_dir_traverse(lfs2,
                    dir, off, ptag, attrs, attrcount, hasseenmove,
                    0, 0, 0, 0, 0,
                    lfs2_dir_traverse_filter, &tag);
            if (filter < 0) {
                return filter;
            }

            if (filter) {
                continue;
            }


            if (!(lfs2_tag_id(tag) >= begin && lfs2_tag_id(tag) < end)) {
                continue;
            }
        }


        if (lfs2_tag_type3(tag) == LFS2_FROM_NOOP) {

        } else if (lfs2_tag_type3(tag) == LFS2_FROM_MOVE) {
            uint16_t fromid = lfs2_tag_size(tag);
            uint16_t toid = lfs2_tag_id(tag);
            int err = lfs2_dir_traverse(lfs2,
                    buffer, 0, LFS2_BLOCK_NULL, ((void*)0), 0, 1,
                    LFS2_MKTAG(0x600, 0x3ff, 0),
                    LFS2_MKTAG(LFS2_TYPE_STRUCT, 0, 0),
                    fromid, fromid+1, toid-fromid+diff,
                    cb, data);
            if (err) {
                return err;
            }
        } else if (lfs2_tag_type3(tag) == LFS2_FROM_USERATTRS) {
            for (unsigned i = 0; i < lfs2_tag_size(tag); i++) {
                const struct lfs2_attr *a = buffer;
                int err = cb(data, LFS2_MKTAG(LFS2_TYPE_USERATTR + a[i].type,
                        lfs2_tag_id(tag) + diff, a[i].size), a[i].buffer);
                if (err) {
                    return err;
                }
            }
        } else {
            int err = cb(data, tag + LFS2_MKTAG(0, diff, 0), buffer);
            if (err) {
                return err;
            }
        }
    }
}
