; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_push.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-pending-operations.c_pending_operation_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_operation = type { %struct.pending_operation* }

@pol_head = common dso_local global %struct.pending_operation* null, align 8
@pol_tail = common dso_local global %struct.pending_operation* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pending_operation_push(%struct.pending_operation* %0) #0 {
  %2 = alloca %struct.pending_operation*, align 8
  store %struct.pending_operation* %0, %struct.pending_operation** %2, align 8
  %3 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %4 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %3, i32 0, i32 0
  store %struct.pending_operation* null, %struct.pending_operation** %4, align 8
  %5 = load %struct.pending_operation*, %struct.pending_operation** @pol_head, align 8
  %6 = icmp ne %struct.pending_operation* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  %9 = load %struct.pending_operation*, %struct.pending_operation** @pol_tail, align 8
  %10 = getelementptr inbounds %struct.pending_operation, %struct.pending_operation* %9, i32 0, i32 0
  store %struct.pending_operation* %8, %struct.pending_operation** %10, align 8
  %11 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  store %struct.pending_operation* %11, %struct.pending_operation** @pol_tail, align 8
  br label %14

12:                                               ; preds = %1
  %13 = load %struct.pending_operation*, %struct.pending_operation** %2, align 8
  store %struct.pending_operation* %13, %struct.pending_operation** @pol_tail, align 8
  store %struct.pending_operation* %13, %struct.pending_operation** @pol_head, align 8
  br label %14

14:                                               ; preds = %12, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
