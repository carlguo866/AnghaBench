
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parentStorage; } ;
typedef TYPE_1__ StorageInternalImpl ;
typedef int StorageBaseImpl ;
typedef int HRESULT ;
typedef int DirRef ;


 int StorageBaseImpl_StreamLink (int ,int ,int ) ;

__attribute__((used)) static HRESULT StorageInternalImpl_StreamLink(StorageBaseImpl *base,
  DirRef dst, DirRef src)
{
  StorageInternalImpl* This = (StorageInternalImpl*) base;

  return StorageBaseImpl_StreamLink(This->parentStorage,
    dst, src);
}
