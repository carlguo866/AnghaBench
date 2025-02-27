; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_ov7660.c_ov7660_set_vflip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_ov7660.c_ov7660_set_vflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64 }
%struct.sd = type { i32* }

@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Set vertical flip to %d\00", align 1
@VFLIP_IDX = common dso_local global i64 0, align 8
@OV7660_MVFP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @ov7660_set_vflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7660_set_vflip(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  %9 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %8, align 8
  %12 = load %struct.sd*, %struct.sd** %8, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* @D_V4L2, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PDEBUG(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i64, i64* @VFLIP_IDX, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 1
  %24 = shl i32 %23, 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i64, i64* @VFLIP_IDX, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 5
  %30 = or i32 %24, %29
  store i32 %30, i32* %7, align 4
  %31 = load %struct.sd*, %struct.sd** %8, align 8
  %32 = load i32, i32* @OV7660_MVFP, align 4
  %33 = call i32 @m5602_write_sensor(%struct.sd* %31, i32 %32, i32* %7, i32 1)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %48

38:                                               ; preds = %2
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %40 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.sd*, %struct.sd** %8, align 8
  %45 = call i32 @ov7660_start(%struct.sd* %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %36
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @ov7660_start(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
