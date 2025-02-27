; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_musb_clear_ep_rxintr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_musb_clear_ep_rxintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dsps_glue = type { %struct.dsps_musb_wrapper* }
%struct.dsps_musb_wrapper = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, i32)* @dsps_musb_clear_ep_rxintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsps_musb_clear_ep_rxintr(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsps_glue*, align 8
  %7 = alloca %struct.dsps_musb_wrapper*, align 8
  store %struct.musb* %0, %struct.musb** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.musb*, %struct.musb** %3, align 8
  %9 = getelementptr inbounds %struct.musb, %struct.musb* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dsps_glue* @dev_get_drvdata(i32 %12)
  store %struct.dsps_glue* %13, %struct.dsps_glue** %6, align 8
  %14 = load %struct.dsps_glue*, %struct.dsps_glue** %6, align 8
  %15 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %14, i32 0, i32 0
  %16 = load %struct.dsps_musb_wrapper*, %struct.dsps_musb_wrapper** %15, align 8
  store %struct.dsps_musb_wrapper* %16, %struct.dsps_musb_wrapper** %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  %19 = load %struct.dsps_musb_wrapper*, %struct.dsps_musb_wrapper** %7, align 8
  %20 = getelementptr inbounds %struct.dsps_musb_wrapper, %struct.dsps_musb_wrapper* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %18, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.musb*, %struct.musb** %3, align 8
  %24 = getelementptr inbounds %struct.musb, %struct.musb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dsps_musb_wrapper*, %struct.dsps_musb_wrapper** %7, align 8
  %27 = getelementptr inbounds %struct.dsps_musb_wrapper, %struct.dsps_musb_wrapper* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @musb_writel(i32 %25, i32 %28, i32 %29)
  ret void
}

declare dso_local %struct.dsps_glue* @dev_get_drvdata(i32) #1

declare dso_local i32 @musb_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
