; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda985x_setmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda985x_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@TDA985x_C6 = common dso_local global i32 0, align 4
@TDA985x_MONO = common dso_local global i32 0, align 4
@TDA985x_STEREO = common dso_local global i32 0, align 4
@TDA985x_SAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CHIPSTATE*, i32)* @tda985x_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda985x_setmode(%struct.CHIPSTATE* %0, i32 %1) #0 {
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
  %11 = load i32, i32* @TDA985x_C6, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 63
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %30 [
    i32 129, label %18
    i32 128, label %22
    i32 130, label %26
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @TDA985x_MONO, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i32, i32* @TDA985x_STEREO, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %31

26:                                               ; preds = %2
  %27 = load i32, i32* @TDA985x_SAP, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %31

30:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %26, %22, %18
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %36 = load i32, i32* @TDA985x_C6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @chip_write(%struct.CHIPSTATE* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @chip_write(%struct.CHIPSTATE*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
