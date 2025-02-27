; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_enum_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_enum_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i64, i32 }
%struct.stm32_dcmi = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @dcmi_enum_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_enum_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.stm32_dcmi*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.stm32_dcmi* @video_drvdata(%struct.file* %9)
  store %struct.stm32_dcmi* %10, %struct.stm32_dcmi** %8, align 8
  %11 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %8, align 8
  %15 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %8, align 8
  %23 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.stm32_dcmi* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
