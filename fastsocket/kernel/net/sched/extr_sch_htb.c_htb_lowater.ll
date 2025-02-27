; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_lowater.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_lowater.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_class = type { i64, i64 }

@htb_hysteresis = common dso_local global i64 0, align 8
@HTB_CANT_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.htb_class*)* @htb_lowater to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @htb_lowater(%struct.htb_class* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.htb_class*, align 8
  store %struct.htb_class* %0, %struct.htb_class** %3, align 8
  %4 = load i64, i64* @htb_hysteresis, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load %struct.htb_class*, %struct.htb_class** %3, align 8
  %8 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HTB_CANT_SEND, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load %struct.htb_class*, %struct.htb_class** %3, align 8
  %14 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 0, %15
  br label %18

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i64 [ %16, %12 ], [ 0, %17 ]
  store i64 %19, i64* %2, align 8
  br label %21

20:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
