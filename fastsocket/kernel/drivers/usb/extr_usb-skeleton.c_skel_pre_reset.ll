; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/extr_usb-skeleton.c_skel_pre_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/extr_usb-skeleton.c_skel_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_skel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @skel_pre_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skel_pre_reset(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_skel*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.usb_skel* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.usb_skel* %5, %struct.usb_skel** %3, align 8
  %6 = load %struct.usb_skel*, %struct.usb_skel** %3, align 8
  %7 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.usb_skel*, %struct.usb_skel** %3, align 8
  %10 = call i32 @skel_draw_down(%struct.usb_skel* %9)
  ret i32 0
}

declare dso_local %struct.usb_skel* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @skel_draw_down(%struct.usb_skel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
