; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib.h_ipoib_cm_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib.h_ipoib_cm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32 }
%struct.mbuf = type { i32 }
%struct.ipoib_cm_tx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipoib_dev_priv*, %struct.mbuf*, %struct.ipoib_cm_tx*)* @ipoib_cm_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_cm_send(%struct.ipoib_dev_priv* %0, %struct.mbuf* %1, %struct.ipoib_cm_tx* %2) #0 {
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ipoib_cm_tx*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store %struct.ipoib_cm_tx* %2, %struct.ipoib_cm_tx** %6, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
