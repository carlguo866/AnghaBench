
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int vlc_playlist_listener_id ;
typedef int vlc_playlist_item_t ;
struct vlc_playlist_callbacks {int on_items_removed; } ;
struct TYPE_6__ {int size; TYPE_2__* data; } ;
struct callback_ctx {TYPE_3__ vec_items_removed; } ;
typedef int input_item_t ;
struct TYPE_4__ {int playlist_size; } ;
struct TYPE_5__ {int index; int count; TYPE_1__ state; } ;


 struct callback_ctx CALLBACK_CTX_INITIALIZER ;
 int CreateDummyMediaArray (int **,int) ;
 int DestroyMediaArray (int **,int) ;
 int EXPECT_AT (int,int) ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int callback_ctx_destroy (struct callback_ctx*) ;
 int callback_on_items_removed ;
 int * vlc_playlist_AddListener (int *,struct vlc_playlist_callbacks*,struct callback_ctx*,int) ;
 int vlc_playlist_Append (int *,int **,int) ;
 int vlc_playlist_Count (int *) ;
 int vlc_playlist_Delete (int *) ;
 int * vlc_playlist_Get (int *,int) ;
 int * vlc_playlist_New (int *) ;
 int vlc_playlist_RemoveListener (int *,int *) ;
 int vlc_playlist_RequestRemove (int *,int **,int,int) ;

__attribute__((used)) static void
test_request_remove_with_matching_hint(void)
{
    vlc_playlist_t *playlist = vlc_playlist_New(((void*)0));
    assert(playlist);

    input_item_t *media[10];
    CreateDummyMediaArray(media, 10);


    int ret = vlc_playlist_Append(playlist, media, 10);
    assert(ret == VLC_SUCCESS);

    struct vlc_playlist_callbacks cbs = {
        .on_items_removed = callback_on_items_removed,
    };

    struct callback_ctx ctx = CALLBACK_CTX_INITIALIZER;
    vlc_playlist_listener_id *listener =
            vlc_playlist_AddListener(playlist, &cbs, &ctx, 0);
    assert(listener);

    vlc_playlist_item_t *items_to_remove[] = {
        vlc_playlist_Get(playlist, 3),
        vlc_playlist_Get(playlist, 4),
        vlc_playlist_Get(playlist, 5),
        vlc_playlist_Get(playlist, 6),
    };

    ret = vlc_playlist_RequestRemove(playlist, items_to_remove, 4, 3);
    assert(ret == VLC_SUCCESS);

    assert(vlc_playlist_Count(playlist) == 6);

    EXPECT_AT(0, 0);
    EXPECT_AT(1, 1);
    EXPECT_AT(2, 2);
    EXPECT_AT(3, 7);
    EXPECT_AT(4, 8);
    EXPECT_AT(5, 9);

    assert(ctx.vec_items_removed.size == 1);
    assert(ctx.vec_items_removed.data[0].index == 3);
    assert(ctx.vec_items_removed.data[0].count == 4);
    assert(ctx.vec_items_removed.data[0].state.playlist_size == 6);

    callback_ctx_destroy(&ctx);
    vlc_playlist_RemoveListener(playlist, listener);
    DestroyMediaArray(media, 10);
    vlc_playlist_Delete(playlist);
}
