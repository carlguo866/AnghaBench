; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_mark_pages_wc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_mark_pages_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32 }
%struct.snd_dma_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*, %struct.snd_dma_buffer*, i32)* @mark_pages_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_pages_wc(%struct.azx* %0, %struct.snd_dma_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.snd_dma_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %4, align 8
  store %struct.snd_dma_buffer* %1, %struct.snd_dma_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
