; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_fmt = type { i64, i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NUM_FORMATS = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.s5p_mfc_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s5p_mfc_fmt* (%struct.v4l2_format*, i32)* @find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s5p_mfc_fmt* @find_format(%struct.v4l2_format* %0, i32 %1) #0 {
  %3 = alloca %struct.s5p_mfc_fmt*, align 8
  %4 = alloca %struct.v4l2_format*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_format* %0, %struct.v4l2_format** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %39, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NUM_FORMATS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** @formats, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %12, i64 %14
  %16 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %11
  %25 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** @formats, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %25, i64 %27
  %29 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** @formats, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.s5p_mfc_fmt, %struct.s5p_mfc_fmt* %34, i64 %36
  store %struct.s5p_mfc_fmt* %37, %struct.s5p_mfc_fmt** %3, align 8
  br label %43

38:                                               ; preds = %24, %11
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %7

42:                                               ; preds = %7
  store %struct.s5p_mfc_fmt* null, %struct.s5p_mfc_fmt** %3, align 8
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.s5p_mfc_fmt*, %struct.s5p_mfc_fmt** %3, align 8
  ret %struct.s5p_mfc_fmt* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
