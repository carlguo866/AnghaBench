; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdevsim = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nsim_bpf_uninit(%struct.netdevsim* %0) #0 {
  %2 = alloca %struct.netdevsim*, align 8
  store %struct.netdevsim* %0, %struct.netdevsim** %2, align 8
  %3 = load %struct.netdevsim*, %struct.netdevsim** %2, align 8
  %4 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @WARN_ON(i32 %6)
  %8 = load %struct.netdevsim*, %struct.netdevsim** %2, align 8
  %9 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.netdevsim*, %struct.netdevsim** %2, align 8
  %14 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.netdevsim*, %struct.netdevsim** %2, align 8
  %18 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.netdevsim*, %struct.netdevsim** %2, align 8
  %23 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bpf_offload_dev_netdev_unregister(i32 %21, i32 %24)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bpf_offload_dev_netdev_unregister(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
