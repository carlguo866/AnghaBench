; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_get_by_name_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_get_by_name_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_ecu = type { i32 }
%struct.j1939_priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.j1939_ecu* @j1939_ecu_get_by_name_locked(%struct.j1939_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.j1939_ecu*, align 8
  %4 = alloca %struct.j1939_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.j1939_ecu*, align 8
  store %struct.j1939_priv* %0, %struct.j1939_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %8 = getelementptr inbounds %struct.j1939_priv, %struct.j1939_priv* %7, i32 0, i32 0
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.j1939_ecu* null, %struct.j1939_ecu** %3, align 8
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.j1939_priv*, %struct.j1939_priv** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.j1939_ecu* @j1939_ecu_find_by_name_locked(%struct.j1939_priv* %14, i32 %15)
  store %struct.j1939_ecu* %16, %struct.j1939_ecu** %6, align 8
  %17 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %18 = icmp ne %struct.j1939_ecu* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  %21 = call i32 @j1939_ecu_get(%struct.j1939_ecu* %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.j1939_ecu*, %struct.j1939_ecu** %6, align 8
  store %struct.j1939_ecu* %23, %struct.j1939_ecu** %3, align 8
  br label %24

24:                                               ; preds = %22, %12
  %25 = load %struct.j1939_ecu*, %struct.j1939_ecu** %3, align 8
  ret %struct.j1939_ecu* %25
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.j1939_ecu* @j1939_ecu_find_by_name_locked(%struct.j1939_priv*, i32) #1

declare dso_local i32 @j1939_ecu_get(%struct.j1939_ecu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
