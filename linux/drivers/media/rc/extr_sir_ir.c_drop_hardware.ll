; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_sir_ir.c_drop_hardware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_sir_ir.c_drop_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hardware_lock = common dso_local global i32 0, align 4
@io = common dso_local global i64 0, align 8
@UART_IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @drop_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_hardware() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @spin_lock_irqsave(i32* @hardware_lock, i64 %2)
  %4 = load i64, i64* @io, align 8
  %5 = load i64, i64* @UART_IER, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @outb(i32 0, i64 %6)
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @spin_unlock_irqrestore(i32* @hardware_lock, i64 %8)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
