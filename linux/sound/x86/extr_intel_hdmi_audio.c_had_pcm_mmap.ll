; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_pcm_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_pcm_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vm_area_struct = type { i32, i64, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.vm_area_struct*)* @had_pcm_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @had_pcm_mmap(%struct.snd_pcm_substream* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @pgprot_noncached(i32 %7)
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @remap_pfn_range(%struct.vm_area_struct* %11, i64 %14, i32 %20, i64 %27, i32 %30)
  ret i32 %31
}

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
