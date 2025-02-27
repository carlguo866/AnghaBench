; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_touchpad_cal_flt_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_touchpad_cal_flt_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ad714x_touchpad_drv* }
%struct.ad714x_touchpad_drv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"touchpad %d filter position:(%d, %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad714x_chip*, i32)* @touchpad_cal_flt_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @touchpad_cal_flt_pos(%struct.ad714x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.ad714x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad714x_touchpad_drv*, align 8
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %7 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %10, i64 %12
  store %struct.ad714x_touchpad_drv* %13, %struct.ad714x_touchpad_drv** %5, align 8
  %14 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %5, align 8
  %15 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 6
  %18 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %5, align 8
  %19 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 4
  %22 = add nsw i32 %17, %21
  %23 = sdiv i32 %22, 10
  %24 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %5, align 8
  %25 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %5, align 8
  %27 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 6
  %30 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %5, align 8
  %31 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 4
  %34 = add nsw i32 %29, %33
  %35 = sdiv i32 %34, 10
  %36 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %5, align 8
  %37 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %39 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %5, align 8
  %43 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %5, align 8
  %46 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i32 %47)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
