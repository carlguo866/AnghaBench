; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_handle_return.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_handle_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_handle_return(%struct.trace_seq* %0) #0 {
  %2 = alloca %struct.trace_seq*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %2, align 8
  %3 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %4 = call i64 @trace_seq_has_overflowed(%struct.trace_seq* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

declare dso_local i64 @trace_seq_has_overflowed(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
