; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_uncharge.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_uncharge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pids_cgroup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pids_cgroup*, i32)* @pids_uncharge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pids_uncharge(%struct.pids_cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.pids_cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pids_cgroup*, align 8
  store %struct.pids_cgroup* %0, %struct.pids_cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pids_cgroup*, %struct.pids_cgroup** %3, align 8
  store %struct.pids_cgroup* %6, %struct.pids_cgroup** %5, align 8
  br label %7

7:                                                ; preds = %15, %2
  %8 = load %struct.pids_cgroup*, %struct.pids_cgroup** %5, align 8
  %9 = call %struct.pids_cgroup* @parent_pids(%struct.pids_cgroup* %8)
  %10 = icmp ne %struct.pids_cgroup* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load %struct.pids_cgroup*, %struct.pids_cgroup** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @pids_cancel(%struct.pids_cgroup* %12, i32 %13)
  br label %15

15:                                               ; preds = %11
  %16 = load %struct.pids_cgroup*, %struct.pids_cgroup** %5, align 8
  %17 = call %struct.pids_cgroup* @parent_pids(%struct.pids_cgroup* %16)
  store %struct.pids_cgroup* %17, %struct.pids_cgroup** %5, align 8
  br label %7

18:                                               ; preds = %7
  ret void
}

declare dso_local %struct.pids_cgroup* @parent_pids(%struct.pids_cgroup*) #1

declare dso_local i32 @pids_cancel(%struct.pids_cgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
