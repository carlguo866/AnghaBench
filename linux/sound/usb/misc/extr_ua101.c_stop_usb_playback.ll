; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_stop_usb_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_stop_usb_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { i32, i32, i32 }

@USB_PLAYBACK_RUNNING = common dso_local global i32 0, align 4
@INTF_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ua101*)* @stop_usb_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_usb_playback(%struct.ua101* %0) #0 {
  %2 = alloca %struct.ua101*, align 8
  store %struct.ua101* %0, %struct.ua101** %2, align 8
  %3 = load i32, i32* @USB_PLAYBACK_RUNNING, align 4
  %4 = load %struct.ua101*, %struct.ua101** %2, align 8
  %5 = getelementptr inbounds %struct.ua101, %struct.ua101* %4, i32 0, i32 2
  %6 = call i32 @clear_bit(i32 %3, i32* %5)
  %7 = load %struct.ua101*, %struct.ua101** %2, align 8
  %8 = getelementptr inbounds %struct.ua101, %struct.ua101* %7, i32 0, i32 1
  %9 = call i32 @kill_stream_urbs(i32* %8)
  %10 = load %struct.ua101*, %struct.ua101** %2, align 8
  %11 = getelementptr inbounds %struct.ua101, %struct.ua101* %10, i32 0, i32 0
  %12 = call i32 @tasklet_kill(i32* %11)
  %13 = load %struct.ua101*, %struct.ua101** %2, align 8
  %14 = load i32, i32* @INTF_PLAYBACK, align 4
  %15 = call i32 @disable_iso_interface(%struct.ua101* %13, i32 %14)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kill_stream_urbs(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @disable_iso_interface(%struct.ua101*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
