; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/common/extr_puts.c_prom_putchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/alchemy/common/extr_puts.c_prom_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@com1 = common dso_local global i8* null, align 8
@SER_CMD = common dso_local global i64 0, align 8
@TIMEOUT = common dso_local global i32 0, align 4
@TX_BUSY = common dso_local global i8 0, align 1
@SER_DATA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prom_putchar(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i8*, i8** @com1, align 8
  %7 = load i64, i64* @SER_CMD, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %3, align 1
  %10 = call i32 (...) @slow_down()
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @TIMEOUT, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %25

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %17
  %19 = load i8, i8* %3, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @TX_BUSY, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp eq i32 0, %23
  br i1 %24, label %5, label %25

25:                                               ; preds = %18, %16
  %26 = load i8, i8* %2, align 1
  %27 = load i8*, i8** @com1, align 8
  %28 = load i64, i64* @SER_DATA, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 %26, i8* %29, align 1
  ret void
}

declare dso_local i32 @slow_down(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
