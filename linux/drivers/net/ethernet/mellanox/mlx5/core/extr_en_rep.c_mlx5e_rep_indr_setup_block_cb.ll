; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_indr_setup_block_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_indr_setup_block_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rep_indr_block_priv = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @mlx5e_rep_indr_setup_block_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rep_indr_setup_block_cb(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlx5e_rep_indr_block_priv*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.mlx5e_rep_indr_block_priv*
  store %struct.mlx5e_rep_indr_block_priv* %10, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %19 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %14 = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, %struct.mlx5e_rep_indr_block_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %8, align 8
  %18 = call i32 @mlx5e_rep_indr_offload(i32 %15, i8* %16, %struct.mlx5e_rep_indr_block_priv* %17)
  store i32 %18, i32* %4, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @mlx5e_rep_indr_offload(i32, i8*, %struct.mlx5e_rep_indr_block_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
