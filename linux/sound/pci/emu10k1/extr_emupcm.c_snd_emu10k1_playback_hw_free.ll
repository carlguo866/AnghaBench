; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_playback_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i64, i32*, i32**, i32, i32* }
%struct.snd_emu10k1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1_playback_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_playback_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_emu10k1_pcm*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_emu10k1* %8, %struct.snd_emu10k1** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %13, align 8
  %15 = icmp eq %struct.snd_emu10k1_pcm* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %19, align 8
  store %struct.snd_emu10k1_pcm* %20, %struct.snd_emu10k1_pcm** %6, align 8
  %21 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %22 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %27 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %30 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @snd_emu10k1_voice_free(i32 %28, i32* %31)
  %33 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %33, i32 0, i32 4
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %25, %17
  %36 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %36, i32 0, i32 2
  %38 = load i32**, i32*** %37, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %35
  %43 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %44 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %47 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %46, i32 0, i32 2
  %48 = load i32**, i32*** %47, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @snd_emu10k1_voice_free(i32 %45, i32* %50)
  %52 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %52, i32 0, i32 2
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %42, %35
  %57 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %58 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %57, i32 0, i32 2
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %68 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %67, i32 0, i32 2
  %69 = load i32**, i32*** %68, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @snd_emu10k1_voice_free(i32 %66, i32* %71)
  %73 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %74 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %73, i32 0, i32 2
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 0
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %63, %56
  %78 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %79 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %84 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %85 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @snd_emu10k1_free_pages(%struct.snd_emu10k1* %83, i32* %86)
  %88 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %89 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  %90 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %6, align 8
  %91 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %82, %77
  %93 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %94 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %92, %16
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1_voice_free(i32, i32*) #1

declare dso_local i32 @snd_emu10k1_free_pages(%struct.snd_emu10k1*, i32*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
