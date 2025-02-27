; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_fmt = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i64, i32 }

@fimc_lite_formats = common dso_local global %struct.fimc_fmt* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @fimc_lite_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_lite_enum_fmt(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.fimc_fmt*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %9 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.fimc_fmt*, %struct.fimc_fmt** @fimc_lite_formats, align 8
  %13 = call i64 @ARRAY_SIZE(%struct.fimc_fmt* %12)
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load %struct.fimc_fmt*, %struct.fimc_fmt** @fimc_lite_formats, align 8
  %20 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %19, i64 %22
  store %struct.fimc_fmt* %23, %struct.fimc_fmt** %8, align 8
  %24 = load %struct.fimc_fmt*, %struct.fimc_fmt** %8, align 8
  %25 = getelementptr inbounds %struct.fimc_fmt, %struct.fimc_fmt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %18, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @ARRAY_SIZE(%struct.fimc_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
