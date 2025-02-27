; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_rq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_rq_param = type { i32 }
%struct.mlx5e_rq = type { i32 }

@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, %struct.mlx5e_rq_param*, %struct.mlx5e_rq*)* @mlx5e_open_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_rq(%struct.mlx5e_channel* %0, %struct.mlx5e_rq_param* %1, %struct.mlx5e_rq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_channel*, align 8
  %6 = alloca %struct.mlx5e_rq_param*, align 8
  %7 = alloca %struct.mlx5e_rq*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %5, align 8
  store %struct.mlx5e_rq_param* %1, %struct.mlx5e_rq_param** %6, align 8
  store %struct.mlx5e_rq* %2, %struct.mlx5e_rq** %7, align 8
  %9 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %10 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %6, align 8
  %11 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %12 = call i32 @mlx5e_create_rq(%struct.mlx5e_channel* %9, %struct.mlx5e_rq_param* %10, %struct.mlx5e_rq* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %43

17:                                               ; preds = %3
  %18 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %19 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %6, align 8
  %20 = call i32 @mlx5e_enable_rq(%struct.mlx5e_rq* %18, %struct.mlx5e_rq_param* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %39

24:                                               ; preds = %17
  %25 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %26 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %27 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  %28 = call i32 @mlx5e_modify_rq(%struct.mlx5e_rq* %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %36

32:                                               ; preds = %24
  %33 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %43

36:                                               ; preds = %31
  %37 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %38 = call i32 @mlx5e_disable_rq(%struct.mlx5e_rq* %37)
  br label %39

39:                                               ; preds = %36, %23
  %40 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %41 = call i32 @mlx5e_destroy_rq(%struct.mlx5e_rq* %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %32, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @mlx5e_create_rq(%struct.mlx5e_channel*, %struct.mlx5e_rq_param*, %struct.mlx5e_rq*) #1

declare dso_local i32 @mlx5e_enable_rq(%struct.mlx5e_rq*, %struct.mlx5e_rq_param*) #1

declare dso_local i32 @mlx5e_modify_rq(%struct.mlx5e_rq*, i32, i32) #1

declare dso_local i32 @mlx5e_disable_rq(%struct.mlx5e_rq*) #1

declare dso_local i32 @mlx5e_destroy_rq(%struct.mlx5e_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
