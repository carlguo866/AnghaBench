; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_omap_udc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_omap_udc.c_omap_udc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"resume + wakeup/SRP\0A\00", align 1
@udc = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_udc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_udc_resume(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udc, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = call i32 @omap_pullup(i32* %5, i32 1)
  %7 = call i32 @msleep(i32 100)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @udc, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @omap_wakeup(i32* %9)
  ret i32 %10
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @omap_pullup(i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @omap_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
