; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_ir_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_ir_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.em28xx_IR* }
%struct.em28xx_IR = type { i32 }

@em28xx_ir_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*)* @em28xx_ir_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_ir_start(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.em28xx_IR*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %4 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %4, i32 0, i32 0
  %6 = load %struct.em28xx_IR*, %struct.em28xx_IR** %5, align 8
  store %struct.em28xx_IR* %6, %struct.em28xx_IR** %3, align 8
  %7 = load %struct.em28xx_IR*, %struct.em28xx_IR** %3, align 8
  %8 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %7, i32 0, i32 0
  %9 = load i32, i32* @em28xx_ir_work, align 4
  %10 = call i32 @INIT_DELAYED_WORK(i32* %8, i32 %9)
  %11 = load %struct.em28xx_IR*, %struct.em28xx_IR** %3, align 8
  %12 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %11, i32 0, i32 0
  %13 = call i32 @schedule_delayed_work(i32* %12, i32 0)
  ret i32 0
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
