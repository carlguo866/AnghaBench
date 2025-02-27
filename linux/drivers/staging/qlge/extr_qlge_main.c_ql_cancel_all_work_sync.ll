; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_cancel_all_work_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_cancel_all_work_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, i32, i32, i32, i32 }

@QL_ADAPTER_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_cancel_all_work_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_cancel_all_work_sync(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %3 = load i32, i32* @QL_ADAPTER_UP, align 4
  %4 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %4, i32 0, i32 6
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 5
  %11 = call i32 @cancel_delayed_work_sync(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %13, i32 0, i32 4
  %15 = call i32 @cancel_delayed_work_sync(i32* %14)
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %16, i32 0, i32 3
  %18 = call i32 @cancel_delayed_work_sync(i32* %17)
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %19, i32 0, i32 2
  %21 = call i32 @cancel_delayed_work_sync(i32* %20)
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %22, i32 0, i32 1
  %24 = call i32 @cancel_delayed_work_sync(i32* %23)
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 0
  %27 = call i32 @cancel_delayed_work_sync(i32* %26)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
