; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_dev_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_dev_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }
%struct.redrat3_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @redrat3_dev_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redrat3_dev_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.redrat3_dev*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %5)
  store %struct.usb_device* %6, %struct.usb_device** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.redrat3_dev* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.redrat3_dev* %8, %struct.redrat3_dev** %4, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %10 = call i32 @usb_set_intfdata(%struct.usb_interface* %9, i32* null)
  %11 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %12 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rc_unregister_device(i32 %13)
  %15 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %16 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %15, i32 0, i32 0
  %17 = call i32 @led_classdev_unregister(i32* %16)
  %18 = load %struct.redrat3_dev*, %struct.redrat3_dev** %4, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %20 = call i32 @redrat3_delete(%struct.redrat3_dev* %18, %struct.usb_device* %19)
  ret void
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.redrat3_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @rc_unregister_device(i32) #1

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @redrat3_delete(%struct.redrat3_dev*, %struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
