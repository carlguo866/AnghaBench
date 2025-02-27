; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_link.c_rose_start_ftimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_link.c_rose_start_ftimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_neigh = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32* }

@rose_ftimer_expiry = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@sysctl_rose_link_fail_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rose_start_ftimer(%struct.rose_neigh* %0) #0 {
  %2 = alloca %struct.rose_neigh*, align 8
  store %struct.rose_neigh* %0, %struct.rose_neigh** %2, align 8
  %3 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %4 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %3, i32 0, i32 0
  %5 = call i32 @del_timer(%struct.TYPE_3__* %4)
  %6 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %7 = ptrtoint %struct.rose_neigh* %6 to i64
  %8 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %9 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  %11 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %12 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i32* @rose_ftimer_expiry, i32** %13, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i32, i32* @sysctl_rose_link_fail_timeout, align 4
  %16 = call i64 @msecs_to_jiffies(i32 %15)
  %17 = add nsw i64 %14, %16
  %18 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %19 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i64 %17, i64* %20, align 8
  %21 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %22 = getelementptr inbounds %struct.rose_neigh, %struct.rose_neigh* %21, i32 0, i32 0
  %23 = call i32 @add_timer(%struct.TYPE_3__* %22)
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
