; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_tui_handle_xdb_layout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-layout.c_tui_handle_xdb_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tui_layout_def = type { i64, i32, i64 }

@SRC_DISASSEM_COMMAND = common dso_local global i32 0, align 4
@TUI_UNDEFINED_REGS = common dso_local global i32 0, align 4
@tui_win_list = common dso_local global i32* null, align 8
@SRC_WIN = common dso_local global i64 0, align 8
@SRC_COMMAND = common dso_local global i32 0, align 4
@DISASSEM_DATA_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tui_layout_def*)* @tui_handle_xdb_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_handle_xdb_layout(%struct.tui_layout_def* %0) #0 {
  %2 = alloca %struct.tui_layout_def*, align 8
  store %struct.tui_layout_def* %0, %struct.tui_layout_def** %2, align 8
  %3 = load %struct.tui_layout_def*, %struct.tui_layout_def** %2, align 8
  %4 = getelementptr inbounds %struct.tui_layout_def, %struct.tui_layout_def* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load i32, i32* @SRC_DISASSEM_COMMAND, align 4
  %9 = load i32, i32* @TUI_UNDEFINED_REGS, align 4
  %10 = call i32 @tui_set_layout(i32 %8, i32 %9)
  %11 = load i32*, i32** @tui_win_list, align 8
  %12 = load %struct.tui_layout_def*, %struct.tui_layout_def** %2, align 8
  %13 = getelementptr inbounds %struct.tui_layout_def, %struct.tui_layout_def* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @tui_set_win_focus_to(i32 %16)
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.tui_layout_def*, %struct.tui_layout_def** %2, align 8
  %20 = getelementptr inbounds %struct.tui_layout_def, %struct.tui_layout_def* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SRC_WIN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @SRC_COMMAND, align 4
  %26 = load i32, i32* @TUI_UNDEFINED_REGS, align 4
  %27 = call i32 @tui_set_layout(i32 %25, i32 %26)
  br label %34

28:                                               ; preds = %18
  %29 = load i32, i32* @DISASSEM_DATA_COMMAND, align 4
  %30 = load %struct.tui_layout_def*, %struct.tui_layout_def** %2, align 8
  %31 = getelementptr inbounds %struct.tui_layout_def, %struct.tui_layout_def* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @tui_set_layout(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %24
  br label %35

35:                                               ; preds = %34, %7
  ret void
}

declare dso_local i32 @tui_set_layout(i32, i32) #1

declare dso_local i32 @tui_set_win_focus_to(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
