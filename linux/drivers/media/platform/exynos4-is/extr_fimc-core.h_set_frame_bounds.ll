; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.h_set_frame_bounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-core.h_set_frame_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_frame = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_frame*, i8*, i8*)* @set_frame_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_frame_bounds(%struct.fimc_frame* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.fimc_frame*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.fimc_frame* %0, %struct.fimc_frame** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %9 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %12 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %15 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.fimc_frame*, %struct.fimc_frame** %4, align 8
  %18 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
