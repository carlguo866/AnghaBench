; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_free_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_free_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcba_usb_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MCBA_CTX_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcba_usb_ctx*)* @mcba_usb_free_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcba_usb_free_ctx(%struct.mcba_usb_ctx* %0) #0 {
  %2 = alloca %struct.mcba_usb_ctx*, align 8
  store %struct.mcba_usb_ctx* %0, %struct.mcba_usb_ctx** %2, align 8
  %3 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = call i32 @atomic_inc(i32* %6)
  %8 = load i32, i32* @MCBA_CTX_FREE, align 4
  %9 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.mcba_usb_ctx, %struct.mcba_usb_ctx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @netif_wake_queue(i32 %15)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
