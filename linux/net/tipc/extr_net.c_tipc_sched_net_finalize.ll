; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_net.c_tipc_sched_net_finalize.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_net.c_tipc_sched_net_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_net_work = type { i32, i32, %struct.net* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@tipc_net_finalize_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_sched_net_finalize(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_net_work*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.tipc_net_work* @kzalloc(i32 16, i32 %6)
  store %struct.tipc_net_work* %7, %struct.tipc_net_work** %5, align 8
  %8 = load %struct.tipc_net_work*, %struct.tipc_net_work** %5, align 8
  %9 = icmp ne %struct.tipc_net_work* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.tipc_net_work*, %struct.tipc_net_work** %5, align 8
  %13 = getelementptr inbounds %struct.tipc_net_work, %struct.tipc_net_work* %12, i32 0, i32 0
  %14 = load i32, i32* @tipc_net_finalize_work, align 4
  %15 = call i32 @INIT_WORK(i32* %13, i32 %14)
  %16 = load %struct.net*, %struct.net** %3, align 8
  %17 = load %struct.tipc_net_work*, %struct.tipc_net_work** %5, align 8
  %18 = getelementptr inbounds %struct.tipc_net_work, %struct.tipc_net_work* %17, i32 0, i32 2
  store %struct.net* %16, %struct.net** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.tipc_net_work*, %struct.tipc_net_work** %5, align 8
  %21 = getelementptr inbounds %struct.tipc_net_work, %struct.tipc_net_work* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.tipc_net_work*, %struct.tipc_net_work** %5, align 8
  %23 = getelementptr inbounds %struct.tipc_net_work, %struct.tipc_net_work* %22, i32 0, i32 0
  %24 = call i32 @schedule_work(i32* %23)
  br label %25

25:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.tipc_net_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
