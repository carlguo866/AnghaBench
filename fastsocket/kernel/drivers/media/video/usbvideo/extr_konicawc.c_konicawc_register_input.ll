; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_register_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_register_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.konicawc = type { i32 }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.konicawc*, %struct.usb_device*)* @konicawc_register_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @konicawc_register_input(%struct.konicawc* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.konicawc*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.konicawc* %0, %struct.konicawc** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
