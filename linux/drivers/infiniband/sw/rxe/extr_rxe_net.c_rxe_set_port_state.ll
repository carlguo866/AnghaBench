; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_set_port_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_net.c_rxe_set_port_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rxe_set_port_state(%struct.rxe_dev* %0) #0 {
  %2 = alloca %struct.rxe_dev*, align 8
  store %struct.rxe_dev* %0, %struct.rxe_dev** %2, align 8
  %3 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %4 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @netif_running(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @netif_carrier_ok(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %16 = call i32 @rxe_port_up(%struct.rxe_dev* %15)
  br label %20

17:                                               ; preds = %8, %1
  %18 = load %struct.rxe_dev*, %struct.rxe_dev** %2, align 8
  %19 = call i32 @rxe_port_down(%struct.rxe_dev* %18)
  br label %20

20:                                               ; preds = %17, %14
  ret void
}

declare dso_local i64 @netif_running(i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @rxe_port_up(%struct.rxe_dev*) #1

declare dso_local i32 @rxe_port_down(%struct.rxe_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
