
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_AMediaCodecBufferProxy ;


 int SDL_AMediaCodecBufferProxy_destroy (int *) ;

__attribute__((used)) static void SDL_AMediaCodecBufferProxy_destroyP(SDL_AMediaCodecBufferProxy **proxy)
{
    if (!proxy)
        return;
    SDL_AMediaCodecBufferProxy_destroy(*proxy);
    *proxy = ((void*)0);
}
