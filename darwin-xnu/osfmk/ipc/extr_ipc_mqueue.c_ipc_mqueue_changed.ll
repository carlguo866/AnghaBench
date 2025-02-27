; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_changed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@IPC_MQUEUE_RECEIVE = common dso_local global i32 0, align 4
@THREAD_RESTART = common dso_local global i32 0, align 4
@WAITQ_ALL_PRIORITIES = common dso_local global i32 0, align 4
@WAITQ_KEEP_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_mqueue_changed(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = call i64 @IMQ_KLIST_VALID(%struct.TYPE_4__* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = call i32 @knote_vanish(i32* %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = call i32 @klist_init(i32* %11)
  br label %13

13:                                               ; preds = %6, %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* @IPC_MQUEUE_RECEIVE, align 4
  %17 = load i32, i32* @THREAD_RESTART, align 4
  %18 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %19 = load i32, i32* @WAITQ_KEEP_LOCKED, align 4
  %20 = call i32 @waitq_wakeup64_all_locked(i32* %15, i32 %16, i32 %17, i32* null, i32 %18, i32 %19)
  ret void
}

declare dso_local i64 @IMQ_KLIST_VALID(%struct.TYPE_4__*) #1

declare dso_local i32 @knote_vanish(i32*) #1

declare dso_local i32 @klist_init(i32*) #1

declare dso_local i32 @waitq_wakeup64_all_locked(i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
