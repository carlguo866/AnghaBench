; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_handle_focus_event.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_handle_focus_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@g_fJustGotFocus = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @handle_focus_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_focus_event(i64 %0) #0 {
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* @g_fJustGotFocus, align 8
  %10 = load i64, i64* @g_fJustGotFocus, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @ui_focus_change(i32 %11)
  ret void
}

declare dso_local i32 @ui_focus_change(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
