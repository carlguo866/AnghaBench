; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_tx_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_zs.c_zs_tx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.zs_port = type { %struct.zs_scc* }
%struct.zs_scc = type { i32 }

@R1 = common dso_local global i32 0, align 4
@ALL_SNT = common dso_local global i32 0, align 4
@TIOCSER_TEMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @zs_tx_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zs_tx_empty(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.zs_port*, align 8
  %4 = alloca %struct.zs_scc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call %struct.zs_port* @to_zport(%struct.uart_port* %7)
  store %struct.zs_port* %8, %struct.zs_port** %3, align 8
  %9 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %10 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %9, i32 0, i32 0
  %11 = load %struct.zs_scc*, %struct.zs_scc** %10, align 8
  store %struct.zs_scc* %11, %struct.zs_scc** %4, align 8
  %12 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %13 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %12, i32 0, i32 0
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %17 = load i32, i32* @R1, align 4
  %18 = call i32 @read_zsreg(%struct.zs_port* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %20 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ALL_SNT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @TIOCSER_TEMT, align 4
  br label %30

29:                                               ; preds = %1
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  ret i32 %31
}

declare dso_local %struct.zs_port* @to_zport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_zsreg(%struct.zs_port*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
