; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_clear_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt73usb.c_rt73usb_clear_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }

@TXRX_CSR9 = common dso_local global i32 0, align 4
@TXRX_CSR9_BEACON_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*)* @rt73usb_clear_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_clear_beacon(%struct.queue_entry* %0) #0 {
  %2 = alloca %struct.queue_entry*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %2, align 8
  %7 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %8 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %10, align 8
  store %struct.rt2x00_dev* %11, %struct.rt2x00_dev** %3, align 8
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %13 = load i32, i32* @TXRX_CSR9, align 4
  %14 = call i32 @rt2x00usb_register_read(%struct.rt2x00_dev* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @TXRX_CSR9_BEACON_GEN, align 4
  %17 = call i32 @rt2x00_set_field32(i32* %6, i32 %16, i32 0)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %19 = load i32, i32* @TXRX_CSR9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %18, i32 %19, i32 %20)
  %22 = load %struct.queue_entry*, %struct.queue_entry** %2, align 8
  %23 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @HW_BEACON_OFFSET(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %26, i32 %27, i32 0)
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %30 = load i32, i32* @TXRX_CSR9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @rt2x00usb_register_write(%struct.rt2x00_dev* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @rt2x00usb_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00usb_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @HW_BEACON_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
