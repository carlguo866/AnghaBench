; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/parisc/extr_harmony.c_harmony_set_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/parisc/extr_harmony.c_harmony_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_harmony = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HARMONY_CNTL_C = common dso_local global i32 0, align 4
@HARMONY_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_harmony*)* @harmony_set_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @harmony_set_control(%struct.snd_harmony* %0) #0 {
  %2 = alloca %struct.snd_harmony*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.snd_harmony* %0, %struct.snd_harmony** %2, align 8
  %5 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %6 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load i32, i32* @HARMONY_CNTL_C, align 4
  %10 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %11 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 6
  %15 = or i32 %9, %14
  %16 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %17 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 5
  %21 = or i32 %15, %20
  %22 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %23 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %21, %25
  store i32 %26, i32* %3, align 4
  %27 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %28 = call i32 @harmony_wait_for_control(%struct.snd_harmony* %27)
  %29 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %30 = load i32, i32* @HARMONY_CNTL, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @harmony_write(%struct.snd_harmony* %29, i32 %30, i32 %31)
  %33 = load %struct.snd_harmony*, %struct.snd_harmony** %2, align 8
  %34 = getelementptr inbounds %struct.snd_harmony, %struct.snd_harmony* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @harmony_wait_for_control(%struct.snd_harmony*) #1

declare dso_local i32 @harmony_write(%struct.snd_harmony*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
