; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_ring_cluster_activate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_mbuf.c_mbuf_ring_cluster_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbuf_ring_cluster_activate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @mbuf_ring_cluster_is_active(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EBUSY, align 4
  store i32 %8, i32* %2, align 4
  br label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @m_ext_paired_activate(i32 %10)
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local i64 @mbuf_ring_cluster_is_active(i32) #1

declare dso_local i32 @m_ext_paired_activate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
