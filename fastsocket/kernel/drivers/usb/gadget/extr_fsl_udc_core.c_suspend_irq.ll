; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_suspend_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_suspend_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_udc = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32*)* }

@USB_STATE_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_udc*)* @suspend_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @suspend_irq(%struct.fsl_udc* %0) #0 {
  %2 = alloca %struct.fsl_udc*, align 8
  store %struct.fsl_udc* %0, %struct.fsl_udc** %2, align 8
  %3 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %4 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %7 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @USB_STATE_SUSPENDED, align 4
  %9 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %12 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = icmp ne i32 (i32*)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %19 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32*)*, i32 (i32*)** %21, align 8
  %23 = load %struct.fsl_udc*, %struct.fsl_udc** %2, align 8
  %24 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %23, i32 0, i32 0
  %25 = call i32 %22(i32* %24)
  br label %26

26:                                               ; preds = %17, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
