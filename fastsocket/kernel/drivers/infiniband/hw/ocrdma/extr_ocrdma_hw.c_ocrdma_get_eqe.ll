; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_get_eqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_get_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_eq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ocrdma_eq*)* @ocrdma_get_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ocrdma_get_eqe(%struct.ocrdma_eq* %0) #0 {
  %2 = alloca %struct.ocrdma_eq*, align 8
  store %struct.ocrdma_eq* %0, %struct.ocrdma_eq** %2, align 8
  %3 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %2, align 8
  %4 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %2, align 8
  %9 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = getelementptr i8, i8* %7, i64 %13
  ret i8* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
