; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_init_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_transport_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { i32, i32, i32, i32, i32, i32 }

@target_release_sess_cmd_refcnt = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_init_session(%struct.se_session* %0) #0 {
  %2 = alloca %struct.se_session*, align 8
  store %struct.se_session* %0, %struct.se_session** %2, align 8
  %3 = load %struct.se_session*, %struct.se_session** %2, align 8
  %4 = getelementptr inbounds %struct.se_session, %struct.se_session* %3, i32 0, i32 5
  %5 = call i32 @INIT_LIST_HEAD(i32* %4)
  %6 = load %struct.se_session*, %struct.se_session** %2, align 8
  %7 = getelementptr inbounds %struct.se_session, %struct.se_session* %6, i32 0, i32 4
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.se_session*, %struct.se_session** %2, align 8
  %10 = getelementptr inbounds %struct.se_session, %struct.se_session* %9, i32 0, i32 3
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.se_session*, %struct.se_session** %2, align 8
  %13 = getelementptr inbounds %struct.se_session, %struct.se_session* %12, i32 0, i32 2
  %14 = call i32 @spin_lock_init(i32* %13)
  %15 = load %struct.se_session*, %struct.se_session** %2, align 8
  %16 = getelementptr inbounds %struct.se_session, %struct.se_session* %15, i32 0, i32 1
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load %struct.se_session*, %struct.se_session** %2, align 8
  %19 = getelementptr inbounds %struct.se_session, %struct.se_session* %18, i32 0, i32 0
  %20 = load i32, i32* @target_release_sess_cmd_refcnt, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @percpu_ref_init(i32* %19, i32 %20, i32 0, i32 %21)
  ret i32 %22
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @percpu_ref_init(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
