; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_clock.c_mlx5_ptp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_clock.c_mlx5_ptp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock_info = type { i32 }
%struct.ptp_clock_request = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)* @mlx5_ptp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ptp_enable(%struct.ptp_clock_info* %0, %struct.ptp_clock_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptp_clock_info*, align 8
  %6 = alloca %struct.ptp_clock_request*, align 8
  %7 = alloca i32, align 4
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %5, align 8
  store %struct.ptp_clock_request* %1, %struct.ptp_clock_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %6, align 8
  %9 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %26 [
    i32 130, label %11
    i32 129, label %16
    i32 128, label %21
  ]

11:                                               ; preds = %3
  %12 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %13 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @mlx5_extts_configure(%struct.ptp_clock_info* %12, %struct.ptp_clock_request* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %18 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @mlx5_perout_configure(%struct.ptp_clock_info* %17, %struct.ptp_clock_request* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %29

21:                                               ; preds = %3
  %22 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %5, align 8
  %23 = load %struct.ptp_clock_request*, %struct.ptp_clock_request** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mlx5_pps_configure(%struct.ptp_clock_info* %22, %struct.ptp_clock_request* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %21, %16, %11
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @mlx5_extts_configure(%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32) #1

declare dso_local i32 @mlx5_perout_configure(%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32) #1

declare dso_local i32 @mlx5_pps_configure(%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
