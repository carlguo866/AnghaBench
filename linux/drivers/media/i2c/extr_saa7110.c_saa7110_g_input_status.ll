; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7110.c_saa7110_g_input_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7110.c_saa7110_g_input_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7110 = type { i64 }

@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"status=0x%02x norm=%llx\0A\00", align 1
@V4L2_IN_ST_NO_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32*)* @saa7110_g_input_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7110_g_input_status(%struct.v4l2_subdev* %0, i32* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.saa7110*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.saa7110* @to_saa7110(%struct.v4l2_subdev* %8)
  store %struct.saa7110* %9, %struct.saa7110** %5, align 8
  %10 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = call i32 @saa7110_read(%struct.v4l2_subdev* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @debug, align 4
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.saa7110*, %struct.saa7110** %5, align 8
  %17 = getelementptr inbounds %struct.saa7110, %struct.saa7110* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @v4l2_dbg(i32 1, i32 %13, %struct.v4l2_subdev* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18)
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 64
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @V4L2_IN_ST_NO_COLOR, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  ret i32 0
}

declare dso_local %struct.saa7110* @to_saa7110(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa7110_read(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
