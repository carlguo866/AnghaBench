; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen.c_dump_oxygen_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen.c_dump_oxygen_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }
%struct.snd_info_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, %struct.snd_info_buffer*)* @dump_oxygen_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_oxygen_registers(%struct.oxygen* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %5 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %6 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %7 = call i32 @dump_ak4396_registers(%struct.oxygen* %5, %struct.snd_info_buffer* %6)
  %8 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %9 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %10 = call i32 @dump_wm8785_registers(%struct.oxygen* %8, %struct.snd_info_buffer* %9)
  ret void
}

declare dso_local i32 @dump_ak4396_registers(%struct.oxygen*, %struct.snd_info_buffer*) #1

declare dso_local i32 @dump_wm8785_registers(%struct.oxygen*, %struct.snd_info_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
