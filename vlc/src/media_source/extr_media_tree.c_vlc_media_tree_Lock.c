
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_media_tree_t ;
struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ media_tree_private_t ;


 TYPE_1__* mt_priv (int *) ;
 int vlc_mutex_lock (int *) ;

void
vlc_media_tree_Lock(vlc_media_tree_t *tree)
{
    media_tree_private_t *priv = mt_priv(tree);
    vlc_mutex_lock(&priv->lock);
}
