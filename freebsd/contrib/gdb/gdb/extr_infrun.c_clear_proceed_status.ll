; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_clear_proceed_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_clear_proceed_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trap_expected = common dso_local global i64 0, align 8
@step_range_start = common dso_local global i64 0, align 8
@step_range_end = common dso_local global i64 0, align 8
@null_frame_id = common dso_local global i32 0, align 4
@step_frame_id = common dso_local global i32 0, align 4
@STEP_OVER_UNDEBUGGABLE = common dso_local global i32 0, align 4
@step_over_calls = common dso_local global i32 0, align 4
@stop_after_trap = common dso_local global i64 0, align 8
@NO_STOP_QUIETLY = common dso_local global i32 0, align 4
@stop_soon = common dso_local global i32 0, align 4
@proceed_to_finish = common dso_local global i64 0, align 8
@breakpoint_proceeded = common dso_local global i32 0, align 4
@stop_bpstat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_proceed_status() #0 {
  store i64 0, i64* @trap_expected, align 8
  store i64 0, i64* @step_range_start, align 8
  store i64 0, i64* @step_range_end, align 8
  %1 = load i32, i32* @null_frame_id, align 4
  store i32 %1, i32* @step_frame_id, align 4
  %2 = load i32, i32* @STEP_OVER_UNDEBUGGABLE, align 4
  store i32 %2, i32* @step_over_calls, align 4
  store i64 0, i64* @stop_after_trap, align 8
  %3 = load i32, i32* @NO_STOP_QUIETLY, align 4
  store i32 %3, i32* @stop_soon, align 4
  store i64 0, i64* @proceed_to_finish, align 8
  store i32 1, i32* @breakpoint_proceeded, align 4
  %4 = call i32 @bpstat_clear(i32* @stop_bpstat)
  ret void
}

declare dso_local i32 @bpstat_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
