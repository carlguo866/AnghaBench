; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_slcr_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_slcr_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slcr = common dso_local global i32 0, align 4
@MLXSW_REG_SLCR_PP_GLOBAL = common dso_local global i32 0, align 4
@MLXSW_REG_SLCR_TYPE_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @mlxsw_reg_slcr_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_slcr_pack(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @slcr, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @MLXSW_REG_ZERO(i32 %7, i8* %8)
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @MLXSW_REG_SLCR_PP_GLOBAL, align 4
  %12 = call i32 @mlxsw_reg_slcr_pp_set(i8* %10, i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @MLXSW_REG_SLCR_TYPE_CRC, align 4
  %15 = call i32 @mlxsw_reg_slcr_type_set(i8* %13, i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mlxsw_reg_slcr_lag_hash_set(i8* %16, i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mlxsw_reg_slcr_seed_set(i8* %19, i32 %20)
  ret void
}

declare dso_local i32 @MLXSW_REG_ZERO(i32, i8*) #1

declare dso_local i32 @mlxsw_reg_slcr_pp_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_slcr_type_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_slcr_lag_hash_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_slcr_seed_set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
