; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_util.c_ui__popup_menu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_util.c_ui__popup_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_browser = type { i8*, i32, i32, i32, i32 }

@ui_browser__argv_write = common dso_local global i32 0, align 4
@ui_browser__argv_seek = common dso_local global i32 0, align 4
@ui_browser__argv_refresh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui__popup_menu(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.ui_browser, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %5, i32 0, i32 0
  %7 = load i8**, i8*** %4, align 8
  %8 = bitcast i8** %7 to i8*
  store i8* %8, i8** %6, align 8
  %9 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %5, i32 0, i32 1
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %5, i32 0, i32 2
  %12 = load i32, i32* @ui_browser__argv_write, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %5, i32 0, i32 3
  %14 = load i32, i32* @ui_browser__argv_seek, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.ui_browser, %struct.ui_browser* %5, i32 0, i32 4
  %16 = load i32, i32* @ui_browser__argv_refresh, align 4
  store i32 %16, i32* %15, align 4
  %17 = call i32 @popup_menu__run(%struct.ui_browser* %5)
  ret i32 %17
}

declare dso_local i32 @popup_menu__run(%struct.ui_browser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
