; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_vbus_threaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_vbus_threaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsps_glue = type { i32, i32 }
%struct.musb = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"VBUS interrupt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dsps_vbus_threaded_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsps_vbus_threaded_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dsps_glue*, align 8
  %7 = alloca %struct.musb*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.dsps_glue*
  store %struct.dsps_glue* %9, %struct.dsps_glue** %6, align 8
  %10 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %11 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.musb* @platform_get_drvdata(i32 %12)
  store %struct.musb* %13, %struct.musb** %7, align 8
  %14 = load %struct.musb*, %struct.musb** %7, align 8
  %15 = icmp ne %struct.musb* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %20 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %24 = call i32 @dsps_mod_timer(%struct.dsps_glue* %23, i32 0)
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.musb* @platform_get_drvdata(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dsps_mod_timer(%struct.dsps_glue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
