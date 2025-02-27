; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_set_grace_period.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_set_grace_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.lockd_net = type { i32, i32 }

@lockd_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @set_grace_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_grace_period(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.lockd_net*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %5 = call i64 (...) @get_lockd_grace_period()
  store i64 %5, i64* %3, align 8
  %6 = load %struct.net*, %struct.net** %2, align 8
  %7 = load i32, i32* @lockd_net_id, align 4
  %8 = call %struct.lockd_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.lockd_net* %8, %struct.lockd_net** %4, align 8
  %9 = load %struct.net*, %struct.net** %2, align 8
  %10 = load %struct.lockd_net*, %struct.lockd_net** %4, align 8
  %11 = getelementptr inbounds %struct.lockd_net, %struct.lockd_net* %10, i32 0, i32 1
  %12 = call i32 @locks_start_grace(%struct.net* %9, i32* %11)
  %13 = load %struct.lockd_net*, %struct.lockd_net** %4, align 8
  %14 = getelementptr inbounds %struct.lockd_net, %struct.lockd_net* %13, i32 0, i32 0
  %15 = call i32 @cancel_delayed_work_sync(i32* %14)
  %16 = load %struct.lockd_net*, %struct.lockd_net** %4, align 8
  %17 = getelementptr inbounds %struct.lockd_net, %struct.lockd_net* %16, i32 0, i32 0
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @schedule_delayed_work(i32* %17, i64 %18)
  ret void
}

declare dso_local i64 @get_lockd_grace_period(...) #1

declare dso_local %struct.lockd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @locks_start_grace(%struct.net*, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
