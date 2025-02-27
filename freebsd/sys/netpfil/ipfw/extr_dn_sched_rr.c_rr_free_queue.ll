; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_rr_free_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_rr_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_queue = type { i64 }
%struct.rr_queue = type { i32 }
%struct.rr_si = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"called\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_queue*)* @rr_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rr_free_queue(%struct.dn_queue* %0) #0 {
  %2 = alloca %struct.dn_queue*, align 8
  %3 = alloca %struct.rr_queue*, align 8
  %4 = alloca %struct.rr_si*, align 8
  store %struct.dn_queue* %0, %struct.dn_queue** %2, align 8
  %5 = load %struct.dn_queue*, %struct.dn_queue** %2, align 8
  %6 = bitcast %struct.dn_queue* %5 to %struct.rr_queue*
  store %struct.rr_queue* %6, %struct.rr_queue** %3, align 8
  %7 = call i32 @ND(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %9 = getelementptr inbounds %struct.rr_queue, %struct.rr_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.dn_queue*, %struct.dn_queue** %2, align 8
  %14 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = inttoptr i64 %16 to %struct.rr_si*
  store %struct.rr_si* %17, %struct.rr_si** %4, align 8
  %18 = load %struct.rr_queue*, %struct.rr_queue** %3, align 8
  %19 = load %struct.rr_si*, %struct.rr_si** %4, align 8
  %20 = call i32 @remove_queue_q(%struct.rr_queue* %18, %struct.rr_si* %19)
  br label %21

21:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local i32 @ND(i8*) #1

declare dso_local i32 @remove_queue_q(%struct.rr_queue*, %struct.rr_si*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
