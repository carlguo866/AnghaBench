
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_data; int kn_sfflags; scalar_t__ kn_sdata; } ;
struct bpf_d {scalar_t__ bd_hlen; scalar_t__ bd_hbuf_read; scalar_t__ bd_slen; scalar_t__ bd_bufsize; scalar_t__ bd_state; scalar_t__ bd_immediate; } ;
typedef scalar_t__ int64_t ;


 scalar_t__ BPF_TIMED_OUT ;
 int NOTE_LOWAT ;
 int bpf_start_timer (struct bpf_d*) ;

__attribute__((used)) static int
filt_bpfread_common(struct knote *kn, struct bpf_d *d)
{
 int ready = 0;

 if (d->bd_immediate) {
  kn->kn_data = (d->bd_hlen == 0 || d->bd_hbuf_read != 0 ?
      d->bd_slen : d->bd_hlen);
  int64_t lowwat = 1;
  if (kn->kn_sfflags & NOTE_LOWAT) {
   if (kn->kn_sdata > d->bd_bufsize)
    lowwat = d->bd_bufsize;
   else if (kn->kn_sdata > lowwat)
    lowwat = kn->kn_sdata;
  }
  ready = (kn->kn_data >= lowwat);
 } else {
  kn->kn_data = ((d->bd_hlen == 0 || d->bd_hbuf_read != 0) &&
      d->bd_state == BPF_TIMED_OUT ? d->bd_slen : d->bd_hlen);
  ready = (kn->kn_data > 0);
 }
 if (!ready)
  bpf_start_timer(d);

 return (ready);
}
