; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_inc_ep_stats_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_inc_ep_stats_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_ep*, i32, i32)* @inc_ep_stats_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inc_ep_stats_bytes(%struct.pxa_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pxa_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pxa_ep* %0, %struct.pxa_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %12 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, %10
  store i32 %15, i32* %13, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.pxa_ep*, %struct.pxa_ep** %4, align 8
  %19 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %17
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %16, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
