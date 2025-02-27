; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_adrenoadreno_gpu.h_adreno_reg_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_adrenoadreno_gpu.h_adreno_reg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adreno_gpu = type { i64* }

@REG_ADRENO_REGISTER_MAX = common dso_local global i32 0, align 4
@REG_SKIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adreno_gpu*, i32)* @adreno_reg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adreno_reg_check(%struct.adreno_gpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca i32, align 4
  store %struct.adreno_gpu* %0, %struct.adreno_gpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @REG_ADRENO_REGISTER_MAX, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %11 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %9, %2
  %19 = call i32 (...) @BUG()
  br label %20

20:                                               ; preds = %18, %9
  %21 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %22 = getelementptr inbounds %struct.adreno_gpu, %struct.adreno_gpu* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @REG_SKIP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %32

31:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
