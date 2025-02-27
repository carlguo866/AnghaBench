; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_exar.c_exar_misc_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_exar.c_exar_misc_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exar8250 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UART_EXAR_INT0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exar8250*)* @exar_misc_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exar_misc_clear(%struct.exar8250* %0) #0 {
  %2 = alloca %struct.exar8250*, align 8
  store %struct.exar8250* %0, %struct.exar8250** %2, align 8
  %3 = load %struct.exar8250*, %struct.exar8250** %2, align 8
  %4 = getelementptr inbounds %struct.exar8250, %struct.exar8250* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @UART_EXAR_INT0, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readb(i64 %7)
  %9 = load %struct.exar8250*, %struct.exar8250** %2, align 8
  %10 = getelementptr inbounds %struct.exar8250, %struct.exar8250* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 8
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.exar8250*, %struct.exar8250** %2, align 8
  %17 = getelementptr inbounds %struct.exar8250, %struct.exar8250* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 8192
  %20 = load i64, i64* @UART_EXAR_INT0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readb(i64 %21)
  br label %23

23:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
