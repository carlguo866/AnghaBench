; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bridgestp.c_bstp_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_state = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"bstp still active\00", align 1
@bstp_list_mtx = common dso_local global i32 0, align 4
@bs_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bstp_detach(%struct.bstp_state* %0) #0 {
  %2 = alloca %struct.bstp_state*, align 8
  store %struct.bstp_state* %0, %struct.bstp_state** %2, align 8
  %3 = load %struct.bstp_state*, %struct.bstp_state** %2, align 8
  %4 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %3, i32 0, i32 1
  %5 = call i32 @LIST_EMPTY(i32* %4)
  %6 = call i32 @KASSERT(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @mtx_lock(i32* @bstp_list_mtx)
  %8 = load %struct.bstp_state*, %struct.bstp_state** %2, align 8
  %9 = load i32, i32* @bs_list, align 4
  %10 = call i32 @LIST_REMOVE(%struct.bstp_state* %8, i32 %9)
  %11 = call i32 @mtx_unlock(i32* @bstp_list_mtx)
  %12 = load %struct.bstp_state*, %struct.bstp_state** %2, align 8
  %13 = getelementptr inbounds %struct.bstp_state, %struct.bstp_state* %12, i32 0, i32 0
  %14 = call i32 @callout_drain(i32* %13)
  %15 = load %struct.bstp_state*, %struct.bstp_state** %2, align 8
  %16 = call i32 @BSTP_LOCK_DESTROY(%struct.bstp_state* %15)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.bstp_state*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @BSTP_LOCK_DESTROY(%struct.bstp_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
