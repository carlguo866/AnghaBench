; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_ring.c_rds_iw_ring_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_ring.c_rds_iw_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_work_ring = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"ring %p nr %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_iw_ring_init(%struct.rds_iw_work_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_iw_work_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.rds_iw_work_ring* %0, %struct.rds_iw_work_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %3, align 8
  %6 = call i32 @memset(%struct.rds_iw_work_ring* %5, i32 0, i32 4)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %3, align 8
  %9 = getelementptr inbounds %struct.rds_iw_work_ring, %struct.rds_iw_work_ring* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %3, align 8
  %11 = load %struct.rds_iw_work_ring*, %struct.rds_iw_work_ring** %3, align 8
  %12 = getelementptr inbounds %struct.rds_iw_work_ring, %struct.rds_iw_work_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rdsdebug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.rds_iw_work_ring* %10, i32 %13)
  ret void
}

declare dso_local i32 @memset(%struct.rds_iw_work_ring*, i32, i32) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_iw_work_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
