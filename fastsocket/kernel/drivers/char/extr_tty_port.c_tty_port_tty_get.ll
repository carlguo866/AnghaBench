; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_tty_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_tty_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.tty_port = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %2, align 8
  %5 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %6 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %10 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.tty_struct* @tty_kref_get(i32 %11)
  store %struct.tty_struct* %12, %struct.tty_struct** %4, align 8
  %13 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  %14 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %13, i32 0, i32 0
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  ret %struct.tty_struct* %17
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tty_struct* @tty_kref_get(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
