
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;
struct bpf_d {int dummy; } ;


 int mac_bpfdesc_label_free (struct label*) ;
 struct label* mac_bpfdesc_label_get (struct bpf_d*) ;
 int mac_bpfdesc_label_set (struct bpf_d*,int *) ;

void
mac_bpfdesc_label_destroy(struct bpf_d *bpf_d)
{
 struct label *label;

 label = mac_bpfdesc_label_get(bpf_d);
 mac_bpfdesc_label_free(label);
 mac_bpfdesc_label_set(bpf_d, ((void*)0));
}
