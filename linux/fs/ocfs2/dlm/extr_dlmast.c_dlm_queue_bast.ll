; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_queue_bast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_queue_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32 }
%struct.dlm_lock = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_queue_bast(%struct.dlm_ctxt* %0, %struct.dlm_lock* %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca %struct.dlm_lock*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store %struct.dlm_lock* %1, %struct.dlm_lock** %4, align 8
  %5 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %6 = icmp ne %struct.dlm_ctxt* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %11 = icmp ne %struct.dlm_lock* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %16 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %19 = load %struct.dlm_lock*, %struct.dlm_lock** %4, align 8
  %20 = call i32 @__dlm_queue_bast(%struct.dlm_ctxt* %18, %struct.dlm_lock* %19)
  %21 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %22 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_queue_bast(%struct.dlm_ctxt*, %struct.dlm_lock*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
