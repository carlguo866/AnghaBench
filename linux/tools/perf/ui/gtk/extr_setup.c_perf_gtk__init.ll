; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/gtk/extr_setup.c_perf_gtk__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/gtk/extr_setup.c_perf_gtk__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@perf_gtk_eops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_gtk__init() #0 {
  %1 = call i32 @perf_error__register(i32* @perf_gtk_eops)
  %2 = call i32 (...) @perf_gtk__init_helpline()
  %3 = call i32 (...) @gtk_ui_progress__init()
  %4 = call i32 (...) @perf_gtk__init_hpp()
  %5 = call i64 @gtk_init_check(i32* null, i32* null)
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 0, i32 -1
  ret i32 %8
}

declare dso_local i32 @perf_error__register(i32*) #1

declare dso_local i32 @perf_gtk__init_helpline(...) #1

declare dso_local i32 @gtk_ui_progress__init(...) #1

declare dso_local i32 @perf_gtk__init_hpp(...) #1

declare dso_local i64 @gtk_init_check(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
