; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_cancel_worker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_cancel_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32 }

@BE_FLAGS_WORKER_SCHEDULED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @be_cancel_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_cancel_worker(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %3 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @BE_FLAGS_WORKER_SCHEDULED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %10, i32 0, i32 1
  %12 = call i32 @cancel_delayed_work_sync(i32* %11)
  %13 = load i32, i32* @BE_FLAGS_WORKER_SCHEDULED, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
