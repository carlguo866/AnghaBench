; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_policy.c_stp_policy_node_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_policy.c_stp_policy_node_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stp_policy_node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"<none>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.stp_policy_node*)* @stp_policy_node_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stp_policy_node_name(%struct.stp_policy_node* %0) #0 {
  %2 = alloca %struct.stp_policy_node*, align 8
  store %struct.stp_policy_node* %0, %struct.stp_policy_node** %2, align 8
  %3 = load %struct.stp_policy_node*, %struct.stp_policy_node** %2, align 8
  %4 = getelementptr inbounds %struct.stp_policy_node, %struct.stp_policy_node* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = inttoptr i64 %7 to i8*
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i8* [ %10, %9 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %11 ]
  ret i8* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
