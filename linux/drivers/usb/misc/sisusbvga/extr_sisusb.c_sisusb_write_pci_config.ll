; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_write_pci_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb.c_sisusb_write_pci_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sisusb_usb_data = type { i32 }
%struct.sisusb_packet = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sisusb_usb_data*, i32, i32)* @sisusb_write_pci_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusb_write_pci_config(%struct.sisusb_usb_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sisusb_usb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sisusb_packet, align 4
  store %struct.sisusb_usb_data* %0, %struct.sisusb_usb_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %7, i32 0, i32 0
  store i32 143, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = or i32 %9, 65536
  %11 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %7, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.sisusb_packet, %struct.sisusb_packet* %7, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %15 = call i32 @sisusb_send_packet(%struct.sisusb_usb_data* %14, i32 10, %struct.sisusb_packet* %7)
  ret i32 %15
}

declare dso_local i32 @sisusb_send_packet(%struct.sisusb_usb_data*, i32, %struct.sisusb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
