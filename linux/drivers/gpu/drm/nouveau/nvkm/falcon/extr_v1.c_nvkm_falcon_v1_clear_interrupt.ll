; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_clear_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/falcon/extr_v1.c_nvkm_falcon_v1_clear_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_falcon*, i32)* @nvkm_falcon_v1_clear_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_falcon_v1_clear_interrupt(%struct.nvkm_falcon* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_falcon*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %6, align 8
  %13 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @nvkm_falcon_mask(%struct.nvkm_falcon* %13, i32 4, i32 %14, i32 %15)
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %18 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @nvkm_wait_msec(%struct.nvkm_device* %17, i32 10, i64 %21, i32 %22, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @nvkm_falcon_mask(%struct.nvkm_falcon*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wait_msec(%struct.nvkm_device*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
