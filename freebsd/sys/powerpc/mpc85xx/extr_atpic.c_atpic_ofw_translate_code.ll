; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_atpic.c_atpic_ofw_translate_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_atpic.c_atpic_ofw_translate_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@INTR_POLARITY_HIGH = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_TRIGGER_CONFORM = common dso_local global i32 0, align 4
@INTR_POLARITY_CONFORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*)* @atpic_ofw_translate_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atpic_ofw_translate_code(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %32 [
    i32 0, label %12
    i32 1, label %17
    i32 2, label %22
    i32 3, label %27
  ]

12:                                               ; preds = %5
  %13 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %14 = load i32*, i32** %9, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %16 = load i32*, i32** %10, align 8
  store i32 %15, i32* %16, align 4
  br label %37

17:                                               ; preds = %5
  %18 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %19 = load i32*, i32** %9, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %21 = load i32*, i32** %10, align 8
  store i32 %20, i32* %21, align 4
  br label %37

22:                                               ; preds = %5
  %23 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %26 = load i32*, i32** %10, align 8
  store i32 %25, i32* %26, align 4
  br label %37

27:                                               ; preds = %5
  %28 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @INTR_POLARITY_HIGH, align 4
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  br label %37

32:                                               ; preds = %5
  %33 = load i32, i32* @INTR_TRIGGER_CONFORM, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @INTR_POLARITY_CONFORM, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %27, %22, %17, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
