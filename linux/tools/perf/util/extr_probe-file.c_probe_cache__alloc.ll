; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache__alloc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-file.c_probe_cache__alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_cache = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.probe_cache* ()* @probe_cache__alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.probe_cache* @probe_cache__alloc() #0 {
  %1 = alloca %struct.probe_cache*, align 8
  %2 = call %struct.probe_cache* @zalloc(i32 8)
  store %struct.probe_cache* %2, %struct.probe_cache** %1, align 8
  %3 = load %struct.probe_cache*, %struct.probe_cache** %1, align 8
  %4 = icmp ne %struct.probe_cache* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load %struct.probe_cache*, %struct.probe_cache** %1, align 8
  %7 = getelementptr inbounds %struct.probe_cache, %struct.probe_cache* %6, i32 0, i32 1
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = load %struct.probe_cache*, %struct.probe_cache** %1, align 8
  %12 = getelementptr inbounds %struct.probe_cache, %struct.probe_cache* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  br label %13

13:                                               ; preds = %5, %0
  %14 = load %struct.probe_cache*, %struct.probe_cache** %1, align 8
  ret %struct.probe_cache* %14
}

declare dso_local %struct.probe_cache* @zalloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
