; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_combinedirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_combinedirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_HANDLED = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @mps2_uart_combinedirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mps2_uart_combinedirq(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @mps2_uart_rxirq(i32 %6, i8* %7)
  %9 = load i64, i64* @IRQ_HANDLED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %12, i64* %3, align 8
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @mps2_uart_txirq(i32 %14, i8* %15)
  %17 = load i64, i64* @IRQ_HANDLED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %20, i64* %3, align 8
  br label %31

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @mps2_uart_oerrirq(i32 %22, i8* %23)
  %25 = load i64, i64* @IRQ_HANDLED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %28, i64* %3, align 8
  br label %31

29:                                               ; preds = %21
  %30 = load i64, i64* @IRQ_NONE, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %29, %27, %19, %11
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i64 @mps2_uart_rxirq(i32, i8*) #1

declare dso_local i64 @mps2_uart_txirq(i32, i8*) #1

declare dso_local i64 @mps2_uart_oerrirq(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
