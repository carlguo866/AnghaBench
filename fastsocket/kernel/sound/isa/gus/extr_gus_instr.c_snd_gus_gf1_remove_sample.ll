; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_instr.c_snd_gus_gf1_remove_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/gus/extr_gus_instr.c_snd_gus_gf1_remove_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf1_wave = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.snd_gus_card = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_gus_gf1_remove_sample(i8* %0, %struct.gf1_wave* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gf1_wave*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_gus_card*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.gf1_wave* %1, %struct.gf1_wave** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_gus_card*
  store %struct.snd_gus_card* %9, %struct.snd_gus_card** %7, align 8
  %10 = load %struct.snd_gus_card*, %struct.snd_gus_card** %7, align 8
  %11 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.gf1_wave*, %struct.gf1_wave** %5, align 8
  %14 = getelementptr inbounds %struct.gf1_wave, %struct.gf1_wave* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snd_gf1_mem_free(i32* %12, i32 %16)
  ret i32 %17
}

declare dso_local i32 @snd_gf1_mem_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
