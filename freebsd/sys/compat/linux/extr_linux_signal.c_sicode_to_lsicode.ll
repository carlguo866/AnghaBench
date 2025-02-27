; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_sicode_to_lsicode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_sicode_to_lsicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINUX_SI_USER = common dso_local global i32 0, align 4
@LINUX_SI_KERNEL = common dso_local global i32 0, align 4
@LINUX_SI_QUEUE = common dso_local global i32 0, align 4
@LINUX_SI_TIMER = common dso_local global i32 0, align 4
@LINUX_SI_MESGQ = common dso_local global i32 0, align 4
@LINUX_SI_ASYNCIO = common dso_local global i32 0, align 4
@LINUX_SI_TKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @sicode_to_lsicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sicode_to_lsicode(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %27 [
    i32 128, label %6
    i32 133, label %9
    i32 130, label %12
    i32 129, label %15
    i32 131, label %18
    i32 134, label %21
    i32 132, label %24
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @LINUX_SI_USER, align 4
  %8 = load i32*, i32** %4, align 8
  store i32 %7, i32* %8, align 4
  br label %30

9:                                                ; preds = %2
  %10 = load i32, i32* @LINUX_SI_KERNEL, align 4
  %11 = load i32*, i32** %4, align 8
  store i32 %10, i32* %11, align 4
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* @LINUX_SI_QUEUE, align 4
  %14 = load i32*, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load i32, i32* @LINUX_SI_TIMER, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load i32, i32* @LINUX_SI_MESGQ, align 4
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* @LINUX_SI_ASYNCIO, align 4
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @LINUX_SI_TKILL, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %24, %21, %18, %15, %12, %9, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
