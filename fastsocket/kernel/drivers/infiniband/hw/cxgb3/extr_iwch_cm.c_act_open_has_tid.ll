; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_cm.c_act_open_has_tid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_cm.c_act_open_has_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPL_ERR_TCAM_FULL = common dso_local global i32 0, align 4
@CPL_ERR_CONN_EXIST = common dso_local global i32 0, align 4
@CPL_ERR_ARP_MISS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @act_open_has_tid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act_open_has_tid(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @CPL_ERR_TCAM_FULL, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @CPL_ERR_CONN_EXIST, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @CPL_ERR_ARP_MISS, align 4
  %13 = icmp ne i32 %11, %12
  br label %14

14:                                               ; preds = %10, %6, %1
  %15 = phi i1 [ false, %6 ], [ false, %1 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
