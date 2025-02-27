; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9840_setaudmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvaudio.c_tda9840_setaudmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@TDA9840_SW = common dso_local global i32 0, align 4
@TDA9840_MONO = common dso_local global i32 0, align 4
@TDA9840_STEREO = common dso_local global i32 0, align 4
@TDA9840_DUALA = common dso_local global i32 0, align 4
@TDA9840_DUALB = common dso_local global i32 0, align 4
@TDA9840_DUALAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CHIPSTATE*, i32)* @tda9840_setaudmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda9840_setaudmode(%struct.CHIPSTATE* %0, i32 %1) #0 {
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %7 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %8 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* @TDA9840_SW, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, -127
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %38 [
    i32 129, label %18
    i32 128, label %22
    i32 132, label %26
    i32 130, label %30
    i32 131, label %34
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @TDA9840_MONO, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load i32, i32* @TDA9840_STEREO, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %39

26:                                               ; preds = %2
  %27 = load i32, i32* @TDA9840_DUALA, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %39

30:                                               ; preds = %2
  %31 = load i32, i32* @TDA9840_DUALB, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load i32, i32* @TDA9840_DUALAB, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %39

38:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %34, %30, %26, %22, %18
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %44 = load i32, i32* @TDA9840_SW, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @chip_write(%struct.CHIPSTATE* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %39
  ret void
}

declare dso_local i32 @chip_write(%struct.CHIPSTATE*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
