; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_seq.c___snd_emux_dec_count.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_seq.c___snd_emux_dec_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_emux*)* @__snd_emux_dec_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__snd_emux_dec_count(%struct.snd_emux* %0) #0 {
  %2 = alloca %struct.snd_emux*, align 8
  store %struct.snd_emux* %0, %struct.snd_emux** %2, align 8
  %3 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %4 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @module_put(i32 %7)
  %9 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %10 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %14 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %19 = call i32 @snd_emux_terminate_all(%struct.snd_emux* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.snd_emux*, %struct.snd_emux** %2, align 8
  %22 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @module_put(i32 %24)
  ret void
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @snd_emux_terminate_all(%struct.snd_emux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
