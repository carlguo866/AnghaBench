; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_fm801.c_snd_fm801_mixer_free_ac97.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/extr_fm801.c_snd_fm801_mixer_free_ac97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i64, %struct.fm801* }
%struct.fm801 = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @snd_fm801_mixer_free_ac97 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_fm801_mixer_free_ac97(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca %struct.fm801*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %4, i32 0, i32 1
  %6 = load %struct.fm801*, %struct.fm801** %5, align 8
  store %struct.fm801* %6, %struct.fm801** %3, align 8
  %7 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %8 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.fm801*, %struct.fm801** %3, align 8
  %13 = getelementptr inbounds %struct.fm801, %struct.fm801* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.fm801*, %struct.fm801** %3, align 8
  %16 = getelementptr inbounds %struct.fm801, %struct.fm801* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
