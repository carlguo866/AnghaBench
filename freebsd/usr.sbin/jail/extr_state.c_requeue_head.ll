; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_state.c_requeue_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/jail/extr_state.c_requeue_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfjail = type { %struct.cfjails* }
%struct.cfjails = type { i32 }

@tq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @requeue_head(%struct.cfjail* %0, %struct.cfjails* %1) #0 {
  %3 = alloca %struct.cfjail*, align 8
  %4 = alloca %struct.cfjails*, align 8
  store %struct.cfjail* %0, %struct.cfjail** %3, align 8
  store %struct.cfjails* %1, %struct.cfjails** %4, align 8
  %5 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %6 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %5, i32 0, i32 0
  %7 = load %struct.cfjails*, %struct.cfjails** %6, align 8
  %8 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %9 = load i32, i32* @tq, align 4
  %10 = call i32 @TAILQ_REMOVE(%struct.cfjails* %7, %struct.cfjail* %8, i32 %9)
  %11 = load %struct.cfjails*, %struct.cfjails** %4, align 8
  %12 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %13 = load i32, i32* @tq, align 4
  %14 = call i32 @TAILQ_INSERT_HEAD(%struct.cfjails* %11, %struct.cfjail* %12, i32 %13)
  %15 = load %struct.cfjails*, %struct.cfjails** %4, align 8
  %16 = load %struct.cfjail*, %struct.cfjail** %3, align 8
  %17 = getelementptr inbounds %struct.cfjail, %struct.cfjail* %16, i32 0, i32 0
  store %struct.cfjails* %15, %struct.cfjails** %17, align 8
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(%struct.cfjails*, %struct.cfjail*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct.cfjails*, %struct.cfjail*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
