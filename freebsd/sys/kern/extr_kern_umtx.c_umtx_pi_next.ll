; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_pi_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_pi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.umtx_q* }
%struct.umtx_q = type { %struct.umtx_pi* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.umtx_pi* (%struct.umtx_pi*)* @umtx_pi_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.umtx_pi* @umtx_pi_next(%struct.umtx_pi* %0) #0 {
  %2 = alloca %struct.umtx_pi*, align 8
  %3 = alloca %struct.umtx_pi*, align 8
  %4 = alloca %struct.umtx_q*, align 8
  store %struct.umtx_pi* %0, %struct.umtx_pi** %3, align 8
  %5 = load %struct.umtx_pi*, %struct.umtx_pi** %3, align 8
  %6 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.umtx_pi* null, %struct.umtx_pi** %2, align 8
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.umtx_pi*, %struct.umtx_pi** %3, align 8
  %12 = getelementptr inbounds %struct.umtx_pi, %struct.umtx_pi* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.umtx_q*, %struct.umtx_q** %14, align 8
  store %struct.umtx_q* %15, %struct.umtx_q** %4, align 8
  %16 = load %struct.umtx_q*, %struct.umtx_q** %4, align 8
  %17 = icmp eq %struct.umtx_q* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store %struct.umtx_pi* null, %struct.umtx_pi** %2, align 8
  br label %23

19:                                               ; preds = %10
  %20 = load %struct.umtx_q*, %struct.umtx_q** %4, align 8
  %21 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %20, i32 0, i32 0
  %22 = load %struct.umtx_pi*, %struct.umtx_pi** %21, align 8
  store %struct.umtx_pi* %22, %struct.umtx_pi** %2, align 8
  br label %23

23:                                               ; preds = %19, %18, %9
  %24 = load %struct.umtx_pi*, %struct.umtx_pi** %2, align 8
  ret %struct.umtx_pi* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
