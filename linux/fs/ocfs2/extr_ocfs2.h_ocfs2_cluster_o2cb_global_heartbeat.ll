; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_ocfs2.h_ocfs2_cluster_o2cb_global_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_ocfs2.h_ocfs2_cluster_o2cb_global_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }

@OCFS2_CLUSTER_O2CB_GLOBAL_HEARTBEAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*)* @ocfs2_cluster_o2cb_global_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_cluster_o2cb_global_heartbeat(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  %3 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %4 = call i64 @ocfs2_o2cb_stack(%struct.ocfs2_super* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OCFS2_CLUSTER_O2CB_GLOBAL_HEARTBEAT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %6, %1
  %14 = phi i1 [ false, %1 ], [ %12, %6 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

declare dso_local i64 @ocfs2_o2cb_stack(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
