; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_etnaviv_gpu_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gpu*)* @etnaviv_gpu_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etnaviv_gpu_clk_disable(%struct.etnaviv_gpu* %0) #0 {
  %2 = alloca %struct.etnaviv_gpu*, align 8
  store %struct.etnaviv_gpu* %0, %struct.etnaviv_gpu** %2, align 8
  %3 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %4 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %9 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @clk_disable_unprepare(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %14 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %19 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @clk_disable_unprepare(i64 %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %24 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %29 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @clk_disable_unprepare(i64 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %34 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %2, align 8
  %39 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @clk_disable_unprepare(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  ret i32 0
}

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
