; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_update_roland_altsetting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_midi.c_update_roland_altsetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_midi = type { i32, i32, %struct.TYPE_2__*, %struct.usb_interface* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface*, %struct.usb_host_interface* }
%struct.usb_host_interface = type { i32 }
%struct.usb_interface_descriptor = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_midi*)* @update_roland_altsetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_roland_altsetting(%struct.snd_usb_midi* %0) #0 {
  %2 = alloca %struct.snd_usb_midi*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca %struct.usb_interface_descriptor*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_usb_midi* %0, %struct.snd_usb_midi** %2, align 8
  %7 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %8 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %7, i32 0, i32 3
  %9 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  store %struct.usb_interface* %9, %struct.usb_interface** %3, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 1
  %12 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %14 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %13, i32 0, i32 0
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %16 = icmp ne %struct.usb_host_interface* %12, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %19 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %55

26:                                               ; preds = %1
  %27 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %28, align 8
  %30 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %31 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %29, i64 %35
  store %struct.usb_host_interface* %36, %struct.usb_host_interface** %4, align 8
  %37 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %38 = call %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface* %37)
  store %struct.usb_interface_descriptor* %38, %struct.usb_interface_descriptor** %5, align 8
  %39 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %40 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %39, i32 0, i32 0
  %41 = call i32 @snd_usbmidi_input_stop(i32* %40)
  %42 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %43 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %46 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %5, align 8
  %49 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_set_interface(i32 %44, i32 %47, i32 %50)
  %52 = load %struct.snd_usb_midi*, %struct.snd_usb_midi** %2, align 8
  %53 = getelementptr inbounds %struct.snd_usb_midi, %struct.snd_usb_midi* %52, i32 0, i32 0
  %54 = call i32 @snd_usbmidi_input_start(i32* %53)
  br label %55

55:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.usb_interface_descriptor* @get_iface_desc(%struct.usb_host_interface*) #1

declare dso_local i32 @snd_usbmidi_input_stop(i32*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @snd_usbmidi_input_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
