
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int number; int * name; } ;
struct TYPE_9__ {int max_number; int lock; int namenum; } ;
typedef TYPE_1__ OSSL_NAMEMAP ;
typedef TYPE_2__ NAMENUM_ENTRY ;


 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int * OPENSSL_strndup (char const*,size_t) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 scalar_t__ lh_NAMENUM_ENTRY_error (int ) ;
 int lh_NAMENUM_ENTRY_insert (int ,TYPE_2__*) ;
 int namenum_free (TYPE_2__*) ;
 int ossl_namemap_name2num_n (TYPE_1__*,char const*,size_t) ;
 TYPE_1__* ossl_namemap_stored (int *) ;

int ossl_namemap_add_n(OSSL_NAMEMAP *namemap, int number,
                       const char *name, size_t name_len)
{
    NAMENUM_ENTRY *namenum = ((void*)0);
    int tmp_number;


    if (namemap == ((void*)0))
        namemap = ossl_namemap_stored(((void*)0));


    if (name == ((void*)0) || name_len == 0 || namemap == ((void*)0))
        return 0;

    if ((tmp_number = ossl_namemap_name2num_n(namemap, name, name_len)) != 0)
        return tmp_number;

    CRYPTO_THREAD_write_lock(namemap->lock);

    if ((namenum = OPENSSL_zalloc(sizeof(*namenum))) == ((void*)0)
        || (namenum->name = OPENSSL_strndup(name, name_len)) == ((void*)0))
        goto err;

    namenum->number = tmp_number =
        number != 0 ? number : ++namemap->max_number;
    (void)lh_NAMENUM_ENTRY_insert(namemap->namenum, namenum);

    if (lh_NAMENUM_ENTRY_error(namemap->namenum))
        goto err;

    CRYPTO_THREAD_unlock(namemap->lock);

    return tmp_number;

 err:
    namenum_free(namenum);

    CRYPTO_THREAD_unlock(namemap->lock);
    return 0;
}
