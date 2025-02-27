; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_shm_ipc.c_qtnf_shm_ipc_irq_outbound_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_shm_ipc.c_qtnf_shm_ipc_irq_outbound_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_shm_ipc = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@QTNF_SHM_IPC_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qtnf_shm_ipc*)* @qtnf_shm_ipc_irq_outbound_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_shm_ipc_irq_outbound_handler(%struct.qtnf_shm_ipc* %0) #0 {
  %2 = alloca %struct.qtnf_shm_ipc*, align 8
  %3 = alloca i32, align 4
  store %struct.qtnf_shm_ipc* %0, %struct.qtnf_shm_ipc** %2, align 8
  %4 = load %struct.qtnf_shm_ipc*, %struct.qtnf_shm_ipc** %2, align 8
  %5 = getelementptr inbounds %struct.qtnf_shm_ipc, %struct.qtnf_shm_ipc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @READ_ONCE(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.qtnf_shm_ipc*, %struct.qtnf_shm_ipc** %2, align 8
  %12 = getelementptr inbounds %struct.qtnf_shm_ipc, %struct.qtnf_shm_ipc* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @readl(i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @QTNF_SHM_IPC_ACK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %10
  %23 = load %struct.qtnf_shm_ipc*, %struct.qtnf_shm_ipc** %2, align 8
  %24 = getelementptr inbounds %struct.qtnf_shm_ipc, %struct.qtnf_shm_ipc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WRITE_ONCE(i32 %25, i32 0)
  %27 = load %struct.qtnf_shm_ipc*, %struct.qtnf_shm_ipc** %2, align 8
  %28 = getelementptr inbounds %struct.qtnf_shm_ipc, %struct.qtnf_shm_ipc* %27, i32 0, i32 0
  %29 = call i32 @complete(i32* %28)
  br label %30

30:                                               ; preds = %9, %22, %10
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
