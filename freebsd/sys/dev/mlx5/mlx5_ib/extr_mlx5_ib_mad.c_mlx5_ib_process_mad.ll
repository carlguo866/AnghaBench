; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_mlx5_ib_process_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_mlx5_ib_process_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }
%struct.ib_mad_hdr = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.ib_mad = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@IB_MAD_RESULT_FAILURE = common dso_local global i32 0, align 4
@vport_counters = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_PERF_MGMT = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_process_mad(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_wc* %3, %struct.ib_grh* %4, %struct.ib_mad_hdr* %5, i64 %6, %struct.ib_mad_hdr* %7, i64* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ib_wc*, align 8
  %16 = alloca %struct.ib_grh*, align 8
  %17 = alloca %struct.ib_mad_hdr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ib_mad_hdr*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.mlx5_ib_dev*, align 8
  %23 = alloca %struct.mlx5_core_dev*, align 8
  %24 = alloca %struct.ib_mad*, align 8
  %25 = alloca %struct.ib_mad*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store %struct.ib_wc* %3, %struct.ib_wc** %15, align 8
  store %struct.ib_grh* %4, %struct.ib_grh** %16, align 8
  store %struct.ib_mad_hdr* %5, %struct.ib_mad_hdr** %17, align 8
  store i64 %6, i64* %18, align 8
  store %struct.ib_mad_hdr* %7, %struct.ib_mad_hdr** %19, align 8
  store i64* %8, i64** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %27 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %26)
  store %struct.mlx5_ib_dev* %27, %struct.mlx5_ib_dev** %22, align 8
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %22, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %28, i32 0, i32 0
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %29, align 8
  store %struct.mlx5_core_dev* %30, %struct.mlx5_core_dev** %23, align 8
  %31 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %17, align 8
  %32 = bitcast %struct.ib_mad_hdr* %31 to %struct.ib_mad*
  store %struct.ib_mad* %32, %struct.ib_mad** %24, align 8
  %33 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %19, align 8
  %34 = bitcast %struct.ib_mad_hdr* %33 to %struct.ib_mad*
  store %struct.ib_mad* %34, %struct.ib_mad** %25, align 8
  %35 = load i64, i64* %18, align 8
  %36 = icmp ne i64 %35, 24
  br i1 %36, label %41, label %37

37:                                               ; preds = %10
  %38 = load i64*, i64** %20, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 24
  br label %41

41:                                               ; preds = %37, %10
  %42 = phi i1 [ true, %10 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON_ONCE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @IB_MAD_RESULT_FAILURE, align 4
  store i32 %47, i32* %11, align 4
  br label %86

48:                                               ; preds = %41
  %49 = load %struct.ib_mad*, %struct.ib_mad** %25, align 8
  %50 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @memset(i32 %51, i32 0, i32 4)
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %23, align 8
  %54 = load i32, i32* @vport_counters, align 4
  %55 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %48
  %58 = load %struct.ib_mad*, %struct.ib_mad** %24, align 8
  %59 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IB_MGMT_CLASS_PERF_MGMT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.ib_mad*, %struct.ib_mad** %24, align 8
  %66 = getelementptr inbounds %struct.ib_mad, %struct.ib_mad* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.ib_mad*, %struct.ib_mad** %24, align 8
  %75 = load %struct.ib_mad*, %struct.ib_mad** %25, align 8
  %76 = call i32 @process_pma_cmd(%struct.ib_device* %72, i32 %73, %struct.ib_mad* %74, %struct.ib_mad* %75)
  store i32 %76, i32* %11, align 4
  br label %86

77:                                               ; preds = %64, %57, %48
  %78 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.ib_wc*, %struct.ib_wc** %15, align 8
  %82 = load %struct.ib_grh*, %struct.ib_grh** %16, align 8
  %83 = load %struct.ib_mad*, %struct.ib_mad** %24, align 8
  %84 = load %struct.ib_mad*, %struct.ib_mad** %25, align 8
  %85 = call i32 @process_mad(%struct.ib_device* %78, i32 %79, i32 %80, %struct.ib_wc* %81, %struct.ib_grh* %82, %struct.ib_mad* %83, %struct.ib_mad* %84)
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %77, %71, %46
  %87 = load i32, i32* %11, align 4
  ret i32 %87
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @process_pma_cmd(%struct.ib_device*, i32, %struct.ib_mad*, %struct.ib_mad*) #1

declare dso_local i32 @process_mad(%struct.ib_device*, i32, i32, %struct.ib_wc*, %struct.ib_grh*, %struct.ib_mad*, %struct.ib_mad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
