
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;


 struct rsnd_mod* rsnd_io_to_mod_ssi (struct rsnd_dai_stream*) ;
 struct rsnd_mod* rsnd_io_to_mod_ssip (struct rsnd_dai_stream*) ;
 int rsnd_mod_id (struct rsnd_mod*) ;
 int rsnd_ssi_multi_slaves_runtime (struct rsnd_dai_stream*) ;

__attribute__((used)) static u32 rsnd_ssi_run_mods(struct rsnd_dai_stream *io)
{
 struct rsnd_mod *ssi_mod = rsnd_io_to_mod_ssi(io);
 struct rsnd_mod *ssi_parent_mod = rsnd_io_to_mod_ssip(io);
 u32 mods;

 mods = rsnd_ssi_multi_slaves_runtime(io) |
  1 << rsnd_mod_id(ssi_mod);

 if (ssi_parent_mod)
  mods |= 1 << rsnd_mod_id(ssi_parent_mod);

 return mods;
}
