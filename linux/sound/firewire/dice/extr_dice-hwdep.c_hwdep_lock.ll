; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-hwdep.c_hwdep_lock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-hwdep.c_hwdep_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*)* @hwdep_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwdep_lock(%struct.snd_dice* %0) #0 {
  %2 = alloca %struct.snd_dice*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %2, align 8
  %4 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %5 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %4, i32 0, i32 1
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %8 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %13 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %3, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.snd_dice*, %struct.snd_dice** %2, align 8
  %19 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %18, i32 0, i32 1
  %20 = call i32 @spin_unlock_irq(i32* %19)
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
