; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_sync_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_sync_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*)* @qdio_sync_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdio_sync_queues(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %3 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %4 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @pci_out_supported(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %10 = call i32 @qdio_siga_sync_all(%struct.qdio_q* %9)
  br label %14

11:                                               ; preds = %1
  %12 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %13 = call i32 @qdio_siga_sync_q(%struct.qdio_q* %12)
  br label %14

14:                                               ; preds = %11, %8
  ret void
}

declare dso_local i64 @pci_out_supported(i32) #1

declare dso_local i32 @qdio_siga_sync_all(%struct.qdio_q*) #1

declare dso_local i32 @qdio_siga_sync_q(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
