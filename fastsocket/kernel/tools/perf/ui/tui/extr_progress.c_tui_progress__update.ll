; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/tui/extr_progress.c_tui_progress__update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/tui/extr_progress.c_tui_progress__update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_browser = common dso_local global i64 0, align 8
@ui__lock = common dso_local global i32 0, align 4
@SLtt_Screen_Rows = common dso_local global i32 0, align 4
@SLtt_Screen_Cols = common dso_local global i32 0, align 4
@HE_COLORSET_SELECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @tui_progress__update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tui_progress__update(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i64, i64* @use_browser, align 8
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %44

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %44

16:                                               ; preds = %12
  %17 = call i32 @ui__refresh_dimensions(i32 1)
  %18 = call i32 @pthread_mutex_lock(i32* @ui__lock)
  %19 = load i32, i32* @SLtt_Screen_Rows, align 4
  %20 = sdiv i32 %19, 2
  %21 = sub nsw i32 %20, 2
  store i32 %21, i32* %8, align 4
  %22 = call i32 @SLsmg_set_color(i32 0)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SLtt_Screen_Cols, align 4
  %25 = call i32 @SLsmg_draw_box(i32 %23, i32 0, i32 3, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = call i32 @SLsmg_gotorc(i32 %26, i32 1)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @SLsmg_write_string(i8* %29)
  %31 = load i32, i32* @HE_COLORSET_SELECTED, align 4
  %32 = call i32 @SLsmg_set_color(i32 %31)
  %33 = load i32, i32* @SLtt_Screen_Cols, align 4
  %34 = sub nsw i32 %33, 2
  %35 = load i32, i32* %4, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = sdiv i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @SLsmg_fill_region(i32 %39, i32 1, i32 1, i32 %40, i8 signext 32)
  %42 = call i32 (...) @SLsmg_refresh()
  %43 = call i32 @pthread_mutex_unlock(i32* @ui__lock)
  br label %44

44:                                               ; preds = %16, %15, %11
  ret void
}

declare dso_local i32 @ui__refresh_dimensions(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @SLsmg_set_color(i32) #1

declare dso_local i32 @SLsmg_draw_box(i32, i32, i32, i32) #1

declare dso_local i32 @SLsmg_gotorc(i32, i32) #1

declare dso_local i32 @SLsmg_write_string(i8*) #1

declare dso_local i32 @SLsmg_fill_region(i32, i32, i32, i32, i8 signext) #1

declare dso_local i32 @SLsmg_refresh(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
