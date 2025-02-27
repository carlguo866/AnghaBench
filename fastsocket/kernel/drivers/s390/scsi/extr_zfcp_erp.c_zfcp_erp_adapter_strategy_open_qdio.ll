; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy_open_qdio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_erp.c_zfcp_erp_adapter_strategy_open_qdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_erp_action = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32 }

@ZFCP_ERP_FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_QDIOUP = common dso_local global i32 0, align 4
@ZFCP_ERP_SUCCEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_erp_action*)* @zfcp_erp_adapter_strategy_open_qdio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_erp_adapter_strategy_open_qdio(%struct.zfcp_erp_action* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_erp_action*, align 8
  %4 = alloca %struct.zfcp_qdio*, align 8
  store %struct.zfcp_erp_action* %0, %struct.zfcp_erp_action** %3, align 8
  %5 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %8, align 8
  store %struct.zfcp_qdio* %9, %struct.zfcp_qdio** %4, align 8
  %10 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %11 = call i64 @zfcp_qdio_open(%struct.zfcp_qdio* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ZFCP_ERP_FAILED, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %16, i32 0, i32 0
  %18 = call i32 @init_waitqueue_head(i32* %17)
  %19 = load i32, i32* @ZFCP_STATUS_ADAPTER_QDIOUP, align 4
  %20 = load %struct.zfcp_erp_action*, %struct.zfcp_erp_action** %3, align 8
  %21 = getelementptr inbounds %struct.zfcp_erp_action, %struct.zfcp_erp_action* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @atomic_set_mask(i32 %19, i32* %23)
  %25 = load i32, i32* @ZFCP_ERP_SUCCEEDED, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %15, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @zfcp_qdio_open(%struct.zfcp_qdio*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
