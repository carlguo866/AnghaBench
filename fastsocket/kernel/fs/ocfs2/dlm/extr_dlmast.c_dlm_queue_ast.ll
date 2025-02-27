; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmast.c_dlm_queue_ast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmast.c_dlm_queue_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_queue_ast(%struct.dlm_ctxt* %0, %struct.dlm_lock* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock* %1, %struct.dlm_lock** %4, align 8
  %5 = call i32 (...) @mlog_entry_void()
  %6 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %7 = icmp ne %struct.dlm_ctxt* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %12 = icmp ne %struct.dlm_lock* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %17 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %20 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %21 = call i32 @__dlm_queue_ast(%struct.dlm_ctxt* %19, %struct.dlm_lock* %20)
  %22 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %23 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_queue_ast(%struct.dlm_ctxt*, %struct.dlm_lock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
