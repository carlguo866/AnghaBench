; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_sysctl_early_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_sysctl_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"sysctl\00", align 1
@sysctl_lock_group = common dso_local global i32 0, align 4
@sysctl_geometry_lock = common dso_local global i32 0, align 4
@sysctl_unlocked_node_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"__sysctl_set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysctl_early_init() #0 {
  %1 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %1, i32* @sysctl_lock_group, align 4
  %2 = load i32, i32* @sysctl_lock_group, align 4
  %3 = call i32 @lck_rw_alloc_init(i32 %2, i32* null)
  store i32 %3, i32* @sysctl_geometry_lock, align 4
  %4 = load i32, i32* @sysctl_lock_group, align 4
  %5 = call i32 @lck_mtx_alloc_init(i32 %4, i32* null)
  store i32 %5, i32* @sysctl_unlocked_node_lock, align 4
  %6 = call i32 @sysctl_register_set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lck_grp_alloc_init(i8*, i32*) #1

declare dso_local i32 @lck_rw_alloc_init(i32, i32*) #1

declare dso_local i32 @lck_mtx_alloc_init(i32, i32*) #1

declare dso_local i32 @sysctl_register_set(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
