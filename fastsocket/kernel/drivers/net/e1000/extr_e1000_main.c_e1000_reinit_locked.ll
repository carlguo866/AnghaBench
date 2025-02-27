; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_reinit_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_reinit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32 }

@__E1000_RESETTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_reinit_locked(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %3 = call i32 (...) @ASSERT_RTNL()
  %4 = call i32 (...) @in_interrupt()
  %5 = call i32 @WARN_ON(i32 %4)
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i32, i32* @__E1000_RESETTING, align 4
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 0
  %10 = call i64 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = call i32 @msleep(i32 1)
  br label %6

14:                                               ; preds = %6
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %16 = call i32 @e1000_down(%struct.e1000_adapter* %15)
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %18 = call i32 @e1000_up(%struct.e1000_adapter* %17)
  %19 = load i32, i32* @__E1000_RESETTING, align 4
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @e1000_down(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_up(%struct.e1000_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
