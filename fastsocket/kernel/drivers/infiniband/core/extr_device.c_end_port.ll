; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_device.c_end_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_device.c_end_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i64, i32 }

@RDMA_NODE_IB_SWITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*)* @end_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @end_port(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %3 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %4 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RDMA_NODE_IB_SWITCH, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %13

9:                                                ; preds = %1
  %10 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %11 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  br label %13

13:                                               ; preds = %9, %8
  %14 = phi i32 [ 0, %8 ], [ %12, %9 ]
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
