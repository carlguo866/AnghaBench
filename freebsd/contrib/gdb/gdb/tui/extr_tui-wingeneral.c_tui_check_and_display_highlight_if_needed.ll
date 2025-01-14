; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_tui_check_and_display_highlight_if_needed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-wingeneral.c_tui_check_and_display_highlight_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_win_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CMD_WIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_check_and_display_highlight_if_needed(%struct.tui_win_info* %0) #0 {
  %2 = alloca %struct.tui_win_info*, align 8
  store %struct.tui_win_info* %0, %struct.tui_win_info** %2, align 8
  %3 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %4 = icmp ne %struct.tui_win_info* %3, null
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %7 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CMD_WIN, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %5
  %13 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %14 = getelementptr inbounds %struct.tui_win_info, %struct.tui_win_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %19 = call i32 @tui_highlight_win(%struct.tui_win_info* %18)
  br label %23

20:                                               ; preds = %12
  %21 = load %struct.tui_win_info*, %struct.tui_win_info** %2, align 8
  %22 = call i32 @tui_unhighlight_win(%struct.tui_win_info* %21)
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %5, %1
  ret void
}

declare dso_local i32 @tui_highlight_win(%struct.tui_win_info*) #1

declare dso_local i32 @tui_unhighlight_win(%struct.tui_win_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
