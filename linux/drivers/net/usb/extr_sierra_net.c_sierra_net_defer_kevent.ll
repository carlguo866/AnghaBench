; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sierra_net.c_sierra_net_defer_kevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sierra_net.c_sierra_net_defer_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sierra_net_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, i32)* @sierra_net_defer_kevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sierra_net_defer_kevent(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sierra_net_data*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = call %struct.sierra_net_data* @sierra_net_get_private(%struct.usbnet* %6)
  store %struct.sierra_net_data* %7, %struct.sierra_net_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.sierra_net_data*, %struct.sierra_net_data** %5, align 8
  %10 = getelementptr inbounds %struct.sierra_net_data, %struct.sierra_net_data* %9, i32 0, i32 1
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load %struct.sierra_net_data*, %struct.sierra_net_data** %5, align 8
  %13 = getelementptr inbounds %struct.sierra_net_data, %struct.sierra_net_data* %12, i32 0, i32 0
  %14 = call i32 @schedule_work(i32* %13)
  ret void
}

declare dso_local %struct.sierra_net_data* @sierra_net_get_private(%struct.usbnet*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
