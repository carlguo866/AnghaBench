
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;
struct mn88443x_priv {struct regmap* regmap_t; } ;
struct dtv_frontend_properties {int dummy; } ;


 int MDASET_T ;
 int MDSET_T ;
 int MDSET_T_FFTS_MASK ;
 int MDSET_T_FFTS_MODE3 ;
 int MDSET_T_GI_1_8 ;
 int MDSET_T_GI_MASK ;
 int MDSET_T_MDAUTO_AUTO ;
 int MDSET_T_MDAUTO_MASK ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,int ) ;

__attribute__((used)) static void mn88443x_t_tune(struct mn88443x_priv *chip,
       struct dtv_frontend_properties *c)
{
 struct regmap *r_t = chip->regmap_t;
 u32 m, v;

 m = MDSET_T_MDAUTO_MASK | MDSET_T_FFTS_MASK | MDSET_T_GI_MASK;
 v = MDSET_T_MDAUTO_AUTO | MDSET_T_FFTS_MODE3 | MDSET_T_GI_1_8;
 regmap_update_bits(r_t, MDSET_T, m, v);

 regmap_write(r_t, MDASET_T, 0);
}
