; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_lookup_ht.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_u32.c_u32_lookup_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_u_hnode = type { i64, %struct.tc_u_hnode* }
%struct.tc_u_common = type { %struct.tc_u_hnode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc_u_hnode* (%struct.tc_u_common*, i64)* @u32_lookup_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc_u_hnode* @u32_lookup_ht(%struct.tc_u_common* %0, i64 %1) #0 {
  %3 = alloca %struct.tc_u_common*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tc_u_hnode*, align 8
  store %struct.tc_u_common* %0, %struct.tc_u_common** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.tc_u_common*, %struct.tc_u_common** %3, align 8
  %7 = getelementptr inbounds %struct.tc_u_common, %struct.tc_u_common* %6, i32 0, i32 0
  %8 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %7, align 8
  store %struct.tc_u_hnode* %8, %struct.tc_u_hnode** %5, align 8
  br label %9

9:                                                ; preds = %20, %2
  %10 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %11 = icmp ne %struct.tc_u_hnode* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %14 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %24

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  %22 = getelementptr inbounds %struct.tc_u_hnode, %struct.tc_u_hnode* %21, i32 0, i32 1
  %23 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %22, align 8
  store %struct.tc_u_hnode* %23, %struct.tc_u_hnode** %5, align 8
  br label %9

24:                                               ; preds = %18, %9
  %25 = load %struct.tc_u_hnode*, %struct.tc_u_hnode** %5, align 8
  ret %struct.tc_u_hnode* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
