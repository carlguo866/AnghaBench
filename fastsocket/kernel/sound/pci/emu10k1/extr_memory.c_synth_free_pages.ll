; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_synth_free_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/emu10k1/extr_memory.c_synth_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32 }
%struct.snd_emu10k1_memblk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_memblk*)* @synth_free_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synth_free_pages(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_memblk* %1) #0 {
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_emu10k1_memblk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %3, align 8
  store %struct.snd_emu10k1_memblk* %1, %struct.snd_emu10k1_memblk** %4, align 8
  %7 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %8 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.snd_emu10k1_memblk*, %struct.snd_emu10k1_memblk** %4, align 8
  %11 = call i32 @get_single_page_range(i32 %9, %struct.snd_emu10k1_memblk* %10, i32* %5, i32* %6)
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @__synth_free_pages(%struct.snd_emu10k1* %12, i32 %13, i32 %14)
  ret i32 0
}

declare dso_local i32 @get_single_page_range(i32, %struct.snd_emu10k1_memblk*, i32*, i32*) #1

declare dso_local i32 @__synth_free_pages(%struct.snd_emu10k1*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
