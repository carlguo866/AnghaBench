; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-status.c_lwan_status_init.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-status.c_lwan_status_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@quiet = common dso_local global i32 0, align 4
@use_colors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_status_init(%struct.lwan* %0) #0 {
  %2 = alloca %struct.lwan*, align 8
  store %struct.lwan* %0, %struct.lwan** %2, align 8
  store i32 0, i32* @quiet, align 4
  %3 = load %struct.lwan*, %struct.lwan** %2, align 8
  %4 = call i32 (...) @can_use_colors()
  store i32 %4, i32* @use_colors, align 4
  ret void
}

declare dso_local i32 @can_use_colors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
