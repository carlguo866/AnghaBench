; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_overrides.c_init_system_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_overrides.c_init_system_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sys_override_mtx_grp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"system_override\00", align 1
@sys_override_mtx_grp = common dso_local global i32 0, align 4
@sys_override_mtx_attr = common dso_local global i32 0, align 4
@sys_override_lock = common dso_local global i32 0, align 4
@fast_jetsam_assert_cnt = common dso_local global i64 0, align 8
@cpu_throttle_assert_cnt = common dso_local global i64 0, align 8
@io_throttle_assert_cnt = common dso_local global i64 0, align 8
@sys_override_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_system_override() #0 {
  %1 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %1, i32* @sys_override_mtx_grp_attr, align 4
  %2 = load i32, i32* @sys_override_mtx_grp_attr, align 4
  %3 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 %3, i32* @sys_override_mtx_grp, align 4
  %4 = call i32 (...) @lck_attr_alloc_init()
  store i32 %4, i32* @sys_override_mtx_attr, align 4
  %5 = load i32, i32* @sys_override_mtx_grp, align 4
  %6 = load i32, i32* @sys_override_mtx_attr, align 4
  %7 = call i32 @lck_mtx_init(i32* @sys_override_lock, i32 %5, i32 %6)
  store i64 0, i64* @fast_jetsam_assert_cnt, align 8
  store i64 0, i64* @cpu_throttle_assert_cnt, align 8
  store i64 0, i64* @io_throttle_assert_cnt, align 8
  store i32 1, i32* @sys_override_enabled, align 4
  ret void
}

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
