; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_ac97_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_ac97_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.es1968* }
%struct.es1968 = type { i64 }

@ESM_AC97_DATA = common dso_local global i64 0, align 8
@ESM_AC97_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_es1968_ac97_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_ac97_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.es1968*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %8, i32 0, i32 0
  %10 = load %struct.es1968*, %struct.es1968** %9, align 8
  store %struct.es1968* %10, %struct.es1968** %7, align 8
  %11 = load %struct.es1968*, %struct.es1968** %7, align 8
  %12 = call i32 @snd_es1968_ac97_wait(%struct.es1968* %11)
  %13 = load i16, i16* %6, align 2
  %14 = load %struct.es1968*, %struct.es1968** %7, align 8
  %15 = getelementptr inbounds %struct.es1968, %struct.es1968* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ESM_AC97_DATA, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outw(i16 zeroext %13, i64 %18)
  %20 = load i16, i16* %5, align 2
  %21 = load %struct.es1968*, %struct.es1968** %7, align 8
  %22 = getelementptr inbounds %struct.es1968, %struct.es1968* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ESM_AC97_INDEX, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i16 zeroext %20, i64 %25)
  ret void
}

declare dso_local i32 @snd_es1968_ac97_wait(%struct.es1968*) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @outb(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
