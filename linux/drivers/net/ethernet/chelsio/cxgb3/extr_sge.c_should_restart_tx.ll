; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_should_restart_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_should_restart_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_txq = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_txq*)* @should_restart_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_restart_tx(%struct.sge_txq* %0) #0 {
  %2 = alloca %struct.sge_txq*, align 8
  %3 = alloca i32, align 4
  store %struct.sge_txq* %0, %struct.sge_txq** %2, align 8
  %4 = load %struct.sge_txq*, %struct.sge_txq** %2, align 8
  %5 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.sge_txq*, %struct.sge_txq** %2, align 8
  %8 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.sge_txq*, %struct.sge_txq** %2, align 8
  %12 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sub i32 %13, %14
  %16 = load %struct.sge_txq*, %struct.sge_txq** %2, align 8
  %17 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 1
  %20 = icmp ult i32 %15, %19
  %21 = zext i1 %20 to i32
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
