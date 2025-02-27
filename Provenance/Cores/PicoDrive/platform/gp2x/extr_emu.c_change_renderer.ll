; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_change_renderer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_emu.c_change_renderer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@PicoAHW = common dso_local global i32 0, align 4
@PAHW_32X = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PAHW_SMS = common dso_local global i32 0, align 4
@RT_8BIT_FAST = common dso_local global i32 0, align 4
@RT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @change_renderer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_renderer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @PicoAHW, align 4
  %5 = load i32, i32* @PAHW_32X, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), i32** %3, align 8
  br label %10

9:                                                ; preds = %1
  store i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 1), i32** %3, align 8
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, i32* %2, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, %11
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @PicoAHW, align 4
  %16 = load i32, i32* @PAHW_SMS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RT_8BIT_FAST, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %24, %19, %10
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RT_COUNT, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32*, i32** %3, align 8
  store i32 0, i32* %34, align 4
  br label %44

35:                                               ; preds = %28
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @RT_COUNT, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32*, i32** %3, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
