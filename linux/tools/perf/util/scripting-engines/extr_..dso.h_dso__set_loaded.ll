; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_..dso.h_dso__set_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/scripting-engines/extr_..dso.h_dso__set_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dso*)* @dso__set_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dso__set_loaded(%struct.dso* %0) #0 {
  %2 = alloca %struct.dso*, align 8
  store %struct.dso* %0, %struct.dso** %2, align 8
  %3 = load %struct.dso*, %struct.dso** %2, align 8
  %4 = getelementptr inbounds %struct.dso, %struct.dso* %3, i32 0, i32 0
  store i32 1, i32* %4, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
