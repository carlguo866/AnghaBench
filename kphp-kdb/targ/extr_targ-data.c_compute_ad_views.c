
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advert {int views; } ;


 struct advert* get_ad_f (int,int ) ;

int compute_ad_views (int ad_id) {
  struct advert *A = get_ad_f (ad_id, 0);
  return A ? A->views : 0;
}
