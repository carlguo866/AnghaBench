; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_indigo_dsp.c_update_vmixer_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_indigo_dsp.c_update_vmixer_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32 }

@EIO = common dso_local global i32 0, align 4
@DSP_VC_SET_VMIXER_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @update_vmixer_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_vmixer_level(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %4 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %5 = call i64 @wait_handshake(%struct.echoaudio* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %12 = call i32 @clear_handshake(%struct.echoaudio* %11)
  %13 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %14 = load i32, i32* @DSP_VC_SET_VMIXER_GAIN, align 4
  %15 = call i32 @send_vector(%struct.echoaudio* %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %10, %7
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
