; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_clps711x.c_clps711xuart_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_clps711x.c_clps711xuart_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@PORT_CLPS711X = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"CLPS711x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.uart_port*)* @clps711xuart_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @clps711xuart_type(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %3 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %4 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PORT_CLPS711X, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* null
  ret i8* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
