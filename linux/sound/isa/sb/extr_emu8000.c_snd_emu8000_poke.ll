; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_poke.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/sb/extr_emu8000.c_snd_emu8000_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu8000 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_emu8000_poke(%struct.snd_emu8000* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_emu8000*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.snd_emu8000* %0, %struct.snd_emu8000** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %11 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %10, i32 0, i32 1
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %16 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = trunc i32 %20 to i16
  %22 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %23 = call i32 @EMU8000_PTR(%struct.snd_emu8000* %22)
  %24 = call i32 @outw(i16 zeroext %21, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %27 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %19, %4
  %29 = load i32, i32* %8, align 4
  %30 = trunc i32 %29 to i16
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @outw(i16 zeroext %30, i32 %31)
  %33 = load %struct.snd_emu8000*, %struct.snd_emu8000** %5, align 8
  %34 = getelementptr inbounds %struct.snd_emu8000, %struct.snd_emu8000* %33, i32 0, i32 1
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i16 zeroext, i32) #1

declare dso_local i32 @EMU8000_PTR(%struct.snd_emu8000*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
