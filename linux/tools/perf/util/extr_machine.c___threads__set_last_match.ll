; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c___threads__set_last_match.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c___threads__set_last_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.threads = type { %struct.thread* }
%struct.thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.threads*, %struct.thread*)* @__threads__set_last_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__threads__set_last_match(%struct.threads* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.threads*, align 8
  %4 = alloca %struct.thread*, align 8
  store %struct.threads* %0, %struct.threads** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %5 = load %struct.thread*, %struct.thread** %4, align 8
  %6 = load %struct.threads*, %struct.threads** %3, align 8
  %7 = getelementptr inbounds %struct.threads, %struct.threads* %6, i32 0, i32 0
  store %struct.thread* %5, %struct.thread** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
