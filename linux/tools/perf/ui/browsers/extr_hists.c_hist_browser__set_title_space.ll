; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__set_title_space.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__set_title_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { i64, %struct.hists*, %struct.ui_browser }
%struct.hists = type { %struct.perf_hpp_list* }
%struct.perf_hpp_list = type { i32 }
%struct.ui_browser = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_browser*)* @hist_browser__set_title_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_browser__set_title_space(%struct.hist_browser* %0) #0 {
  %2 = alloca %struct.hist_browser*, align 8
  %3 = alloca %struct.ui_browser*, align 8
  %4 = alloca %struct.hists*, align 8
  %5 = alloca %struct.perf_hpp_list*, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %2, align 8
  %6 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %7 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %6, i32 0, i32 2
  store %struct.ui_browser* %7, %struct.ui_browser** %3, align 8
  %8 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %9 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %8, i32 0, i32 1
  %10 = load %struct.hists*, %struct.hists** %9, align 8
  store %struct.hists* %10, %struct.hists** %4, align 8
  %11 = load %struct.hists*, %struct.hists** %4, align 8
  %12 = getelementptr inbounds %struct.hists, %struct.hists* %11, i32 0, i32 0
  %13 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %12, align 8
  store %struct.perf_hpp_list* %13, %struct.perf_hpp_list** %5, align 8
  %14 = load %struct.hist_browser*, %struct.hist_browser** %2, align 8
  %15 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.perf_hpp_list*, %struct.perf_hpp_list** %5, align 8
  %20 = getelementptr inbounds %struct.perf_hpp_list, %struct.perf_hpp_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 0, %22 ]
  %25 = load %struct.ui_browser*, %struct.ui_browser** %3, align 8
  %26 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
