; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_ov9650.c_ov9650_set_auto_exposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_ov9650.c_ov9650_set_auto_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Set auto exposure control to %d\0A\00", align 1
@OV9650_COM8 = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @ov9650_set_auto_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9650_set_auto_exposure(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %8, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = load i32, i32* @D_CONF, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @gspca_dbg(%struct.gspca_dev* %11, i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.sd*, %struct.sd** %8, align 8
  %16 = load i32, i32* @OV9650_COM8, align 4
  %17 = call i32 @m5602_read_sensor(%struct.sd* %15, i32 %16, i32* %7, i32 1)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 254
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 1
  %31 = shl i32 %30, 0
  %32 = or i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.sd*, %struct.sd** %8, align 8
  %34 = load i32, i32* @OV9650_COM8, align 4
  %35 = call i32 @m5602_write_sensor(%struct.sd* %33, i32 %34, i32* %7, i32 1)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %22, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

declare dso_local i32 @m5602_read_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
