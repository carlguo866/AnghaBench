; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_reset_txqsq_cc_pc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/extr_reporter_tx.c_mlx5e_reset_txqsq_cc_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_txqsq = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"SQ 0x%x: cc (0x%x) != pc (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_txqsq*)* @mlx5e_reset_txqsq_cc_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_reset_txqsq_cc_pc(%struct.mlx5e_txqsq* %0) #0 {
  %2 = alloca %struct.mlx5e_txqsq*, align 8
  store %struct.mlx5e_txqsq* %0, %struct.mlx5e_txqsq** %2, align 8
  %3 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %12 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @WARN_ONCE(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16, i64 %19)
  %21 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.mlx5e_txqsq*, %struct.mlx5e_txqsq** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5e_txqsq, %struct.mlx5e_txqsq* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
