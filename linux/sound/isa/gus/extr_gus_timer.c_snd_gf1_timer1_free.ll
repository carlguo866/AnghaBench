; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_timer.c_snd_gf1_timer1_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gus_timer.c_snd_gf1_timer1_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { %struct.snd_gus_card* }
%struct.snd_gus_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_timer*)* @snd_gf1_timer1_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gf1_timer1_free(%struct.snd_timer* %0) #0 {
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca %struct.snd_gus_card*, align 8
  store %struct.snd_timer* %0, %struct.snd_timer** %2, align 8
  %4 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %5 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %4, i32 0, i32 0
  %6 = load %struct.snd_gus_card*, %struct.snd_gus_card** %5, align 8
  store %struct.snd_gus_card* %6, %struct.snd_gus_card** %3, align 8
  %7 = load %struct.snd_gus_card*, %struct.snd_gus_card** %3, align 8
  %8 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
