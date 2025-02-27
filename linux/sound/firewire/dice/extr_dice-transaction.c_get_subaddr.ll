; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_get_subaddr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-transaction.c_get_subaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32, i32, i32, i32, i32 }

@DICE_PRIVATE_SPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*, i32, i32)* @get_subaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_subaddr(%struct.snd_dice* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_dice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %33 [
    i32 128, label %8
    i32 130, label %14
    i32 129, label %20
    i32 131, label %26
    i32 132, label %32
  ]

8:                                                ; preds = %3
  %9 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %10 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* %6, align 4
  br label %39

14:                                               ; preds = %3
  %15 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %16 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %22 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %39

26:                                               ; preds = %3
  %27 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %28 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %39

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %3, %32
  %34 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %35 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %26, %20, %14, %8
  %40 = load i64, i64* @DICE_PRIVATE_SPACE, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
