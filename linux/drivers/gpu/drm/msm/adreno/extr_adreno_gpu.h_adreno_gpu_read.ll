; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.h_adreno_gpu_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.h_adreno_gpu_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adreno_gpu = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.adreno_gpu*, i32)* @adreno_gpu_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @adreno_gpu_read(%struct.adreno_gpu* %0, i32 %1) #0 {
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.adreno_gpu* %0, %struct.adreno_gpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %8 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %14 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @adreno_reg_check(%struct.adreno_gpu* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %20 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i64 @gpu_read(i32* %20, i64 %22)
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %18, %2
  %25 = load i64, i64* %6, align 8
  ret i64 %25
}

declare dso_local i64 @adreno_reg_check(%struct.adreno_gpu*, i32) #1

declare dso_local i64 @gpu_read(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
