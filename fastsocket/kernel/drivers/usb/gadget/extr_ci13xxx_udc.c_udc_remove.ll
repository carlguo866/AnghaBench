; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_udc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_ci13xxx_udc.c_udc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci13xxx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_udc = common dso_local global %struct.ci13xxx* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"EINVAL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @udc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_remove() #0 {
  %1 = alloca %struct.ci13xxx*, align 8
  %2 = load %struct.ci13xxx*, %struct.ci13xxx** @_udc, align 8
  store %struct.ci13xxx* %2, %struct.ci13xxx** %1, align 8
  %3 = load %struct.ci13xxx*, %struct.ci13xxx** %1, align 8
  %4 = icmp eq %struct.ci13xxx* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %14

7:                                                ; preds = %0
  %8 = load %struct.ci13xxx*, %struct.ci13xxx** %1, align 8
  %9 = getelementptr inbounds %struct.ci13xxx, %struct.ci13xxx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @device_unregister(i32* %10)
  %12 = load %struct.ci13xxx*, %struct.ci13xxx** %1, align 8
  %13 = call i32 @kfree(%struct.ci13xxx* %12)
  store %struct.ci13xxx* null, %struct.ci13xxx** @_udc, align 8
  br label %14

14:                                               ; preds = %7, %5
  ret void
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @kfree(%struct.ci13xxx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
