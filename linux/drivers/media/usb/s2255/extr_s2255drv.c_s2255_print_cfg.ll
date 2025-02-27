; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_print_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_s2255_print_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2255_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.s2255_mode = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"------------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"format: %d\0Ascale %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"fdec: %d\0Acolor %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"bright: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2255_dev*, %struct.s2255_mode*)* @s2255_print_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2255_print_cfg(%struct.s2255_dev* %0, %struct.s2255_mode* %1) #0 {
  %3 = alloca %struct.s2255_dev*, align 8
  %4 = alloca %struct.s2255_mode*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.s2255_dev* %0, %struct.s2255_dev** %3, align 8
  store %struct.s2255_mode* %1, %struct.s2255_mode** %4, align 8
  %6 = load %struct.s2255_dev*, %struct.s2255_dev** %3, align 8
  %7 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %10, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load %struct.s2255_mode*, %struct.s2255_mode** %4, align 8
  %14 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.s2255_mode*, %struct.s2255_mode** %4, align 8
  %17 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.s2255_mode*, %struct.s2255_mode** %4, align 8
  %22 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.s2255_mode*, %struct.s2255_mode** %4, align 8
  %25 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load %struct.s2255_mode*, %struct.s2255_mode** %4, align 8
  %30 = getelementptr inbounds %struct.s2255_mode, %struct.s2255_mode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
