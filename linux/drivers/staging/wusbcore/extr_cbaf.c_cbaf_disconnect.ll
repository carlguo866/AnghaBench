; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_cbaf.c_cbaf_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_cbaf.c_cbaf_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.device }
%struct.device = type { i32 }
%struct.cbaf = type { i32, i32 }

@cbaf_dev_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @cbaf_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbaf_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.cbaf*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.cbaf* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.cbaf* %6, %struct.cbaf** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = call i32 @sysfs_remove_group(i32* %10, i32* @cbaf_dev_attr_group)
  %12 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %13 = call i32 @usb_set_intfdata(%struct.usb_interface* %12, i32* null)
  %14 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %15 = call i32 @usb_put_intf(%struct.usb_interface* %14)
  %16 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %17 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_put_dev(i32 %18)
  %20 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %21 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfree(i32 %22)
  %24 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %25 = call i32 @kzfree(%struct.cbaf* %24)
  ret void
}

declare dso_local %struct.cbaf* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_put_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kzfree(%struct.cbaf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
