; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_alloc_drv_context.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_alloc_drv_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_alloc_drv_context(%struct.intel_sst_drv** %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sst_drv**, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_sst_drv** %0, %struct.intel_sst_drv*** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.device*, %struct.device** %6, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.intel_sst_drv* @devm_kzalloc(%struct.device* %8, i32 16, i32 %9)
  %11 = load %struct.intel_sst_drv**, %struct.intel_sst_drv*** %5, align 8
  store %struct.intel_sst_drv* %10, %struct.intel_sst_drv** %11, align 8
  %12 = load %struct.intel_sst_drv**, %struct.intel_sst_drv*** %5, align 8
  %13 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %12, align 8
  %14 = icmp ne %struct.intel_sst_drv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load %struct.intel_sst_drv**, %struct.intel_sst_drv*** %5, align 8
  %21 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %20, align 8
  %22 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %21, i32 0, i32 1
  store %struct.device* %19, %struct.device** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.intel_sst_drv**, %struct.intel_sst_drv*** %5, align 8
  %25 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %24, align 8
  %26 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.intel_sst_drv* @devm_kzalloc(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
