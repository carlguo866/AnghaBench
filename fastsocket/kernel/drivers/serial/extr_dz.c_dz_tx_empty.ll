; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_dz.c_dz_tx_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_dz.c_dz_tx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.dz_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DZ_TCR = common dso_local global i32 0, align 4
@TIOCSER_TEMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @dz_tx_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dz_tx_empty(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.dz_port*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.dz_port* @to_dport(%struct.uart_port* %6)
  store %struct.dz_port* %7, %struct.dz_port** %3, align 8
  %8 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %9 = getelementptr inbounds %struct.dz_port, %struct.dz_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 1, %11
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %5, align 2
  %14 = load %struct.dz_port*, %struct.dz_port** %3, align 8
  %15 = load i32, i32* @DZ_TCR, align 4
  %16 = call zeroext i16 @dz_in(%struct.dz_port* %14, i32 %15)
  store i16 %16, i16* %4, align 2
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* %4, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, %18
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %4, align 2
  %23 = load i16, i16* %4, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @TIOCSER_TEMT, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 0, %26 ], [ %28, %27 ]
  ret i32 %30
}

declare dso_local %struct.dz_port* @to_dport(%struct.uart_port*) #1

declare dso_local zeroext i16 @dz_in(%struct.dz_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
