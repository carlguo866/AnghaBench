
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsnd_priv {int dummy; } ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;


 int MOD_MAX ;
 int dev_dbg (struct device*,char*,int ,...) ;
 struct rsnd_mod mem ;
 int rsnd_io_to_mod (struct rsnd_dai_stream*,int) ;
 struct rsnd_mod* rsnd_io_to_mod_ctu (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_dvc (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_mix (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_src (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_ssi (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_ssiu (struct rsnd_dai_stream*) ;
 int rsnd_mod_name (struct rsnd_mod*) ;
 struct rsnd_priv* rsnd_mod_to_priv (struct rsnd_mod*) ;
 struct device* rsnd_priv_to_dev (struct rsnd_priv*) ;
 scalar_t__ rsnd_ssiu_of_node (struct rsnd_priv*) ;

__attribute__((used)) static void rsnd_dma_of_path(struct rsnd_mod *this,
        struct rsnd_dai_stream *io,
        int is_play,
        struct rsnd_mod **mod_from,
        struct rsnd_mod **mod_to)
{
 struct rsnd_mod *ssi;
 struct rsnd_mod *src = rsnd_io_to_mod_src(io);
 struct rsnd_mod *ctu = rsnd_io_to_mod_ctu(io);
 struct rsnd_mod *mix = rsnd_io_to_mod_mix(io);
 struct rsnd_mod *dvc = rsnd_io_to_mod_dvc(io);
 struct rsnd_mod *mod[MOD_MAX];
 struct rsnd_mod *mod_start, *mod_end;
 struct rsnd_priv *priv = rsnd_mod_to_priv(this);
 struct device *dev = rsnd_priv_to_dev(priv);
 int nr, i, idx;
 if (rsnd_ssiu_of_node(priv)) {
  struct rsnd_mod *ssiu = rsnd_io_to_mod_ssiu(io);


  ssi = ssiu;
  if (this == rsnd_io_to_mod_ssi(io))
   this = ssiu;
 } else {

  ssi = rsnd_io_to_mod_ssi(io);
 }

 if (!ssi)
  return;

 nr = 0;
 for (i = 0; i < MOD_MAX; i++) {
  mod[i] = ((void*)0);
  nr += !!rsnd_io_to_mod(io, i);
 }
 mod_start = (is_play) ? ((void*)0) : ssi;
 mod_end = (is_play) ? ssi : ((void*)0);

 idx = 0;
 mod[idx++] = mod_start;
 for (i = 1; i < nr; i++) {
  if (src) {
   mod[idx++] = src;
   src = ((void*)0);
  } else if (ctu) {
   mod[idx++] = ctu;
   ctu = ((void*)0);
  } else if (mix) {
   mod[idx++] = mix;
   mix = ((void*)0);
  } else if (dvc) {
   mod[idx++] = dvc;
   dvc = ((void*)0);
  }
 }
 mod[idx] = mod_end;







 if ((this == ssi) == (is_play)) {
  *mod_from = mod[idx - 1];
  *mod_to = mod[idx];
 } else {
  *mod_from = mod[0];
  *mod_to = mod[1];
 }

 dev_dbg(dev, "module connection (this is %s)\n", rsnd_mod_name(this));
 for (i = 0; i <= idx; i++) {
  dev_dbg(dev, "  %s%s\n",
   rsnd_mod_name(mod[i] ? mod[i] : &mem),
   (mod[i] == *mod_from) ? " from" :
   (mod[i] == *mod_to) ? " to" : "");
 }
}
