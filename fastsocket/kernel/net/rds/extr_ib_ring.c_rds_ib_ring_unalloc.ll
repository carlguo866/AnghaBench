; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_ring.c_rds_ib_ring_unalloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_ib_ring.c_rds_ib_ring_unalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_work_ring = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_ring_unalloc(%struct.rds_ib_work_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_ib_work_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.rds_ib_work_ring* %0, %struct.rds_ib_work_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rds_ib_work_ring*, %struct.rds_ib_work_ring** %3, align 8
  %6 = getelementptr inbounds %struct.rds_ib_work_ring, %struct.rds_ib_work_ring* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %7, %8
  %10 = load %struct.rds_ib_work_ring*, %struct.rds_ib_work_ring** %3, align 8
  %11 = getelementptr inbounds %struct.rds_ib_work_ring, %struct.rds_ib_work_ring* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = srem i32 %9, %12
  %14 = load %struct.rds_ib_work_ring*, %struct.rds_ib_work_ring** %3, align 8
  %15 = getelementptr inbounds %struct.rds_ib_work_ring, %struct.rds_ib_work_ring* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.rds_ib_work_ring*, %struct.rds_ib_work_ring** %3, align 8
  %18 = getelementptr inbounds %struct.rds_ib_work_ring, %struct.rds_ib_work_ring* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, %16
  store i32 %20, i32* %18, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
