; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_syslink.c_create_parent_window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_syslink.c_create_parent_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@create_parent_window.titleW = internal constant [27 x i8] c"Syslink test parent window\00", align 16
@parentClassW = common dso_local global i32 0, align 4
@WS_CAPTION = common dso_local global i32 0, align 4
@WS_SYSMENU = common dso_local global i32 0, align 4
@WS_MINIMIZEBOX = common dso_local global i32 0, align 4
@WS_MAXIMIZEBOX = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @create_parent_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_parent_window() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 (...) @register_parent_wnd_class()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %19

5:                                                ; preds = %0
  %6 = load i32, i32* @parentClassW, align 4
  %7 = load i32, i32* @WS_CAPTION, align 4
  %8 = load i32, i32* @WS_SYSMENU, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @WS_MINIMIZEBOX, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @WS_MAXIMIZEBOX, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @WS_VISIBLE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 (...) @GetDesktopWindow()
  %17 = call i32 @GetModuleHandleW(i32* null)
  %18 = call i32* @CreateWindowExW(i32 0, i32 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @create_parent_window.titleW, i64 0, i64 0), i32 %15, i32 0, i32 0, i32 200, i32 100, i32 %16, i32* null, i32 %17, i32* null)
  store i32* %18, i32** %1, align 8
  br label %19

19:                                               ; preds = %5, %4
  %20 = load i32*, i32** %1, align 8
  ret i32* %20
}

declare dso_local i32 @register_parent_wnd_class(...) #1

declare dso_local i32* @CreateWindowExW(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32 @GetModuleHandleW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
