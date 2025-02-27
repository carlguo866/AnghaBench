; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_tinfo_driver.c_drv_initmouse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_tinfo_driver.c_drv_initmouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@key_mouse = common dso_local global i64 0, align 8
@xterm_kmous = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"xterm\00", align 1
@KEY_MOUSE = common dso_local global i32 0, align 4
@OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @drv_initmouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drv_initmouse(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = call i32 (...) @AssertTCB()
  %5 = call i32 (...) @SetSP()
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %8, label %50

8:                                                ; preds = %1
  %9 = load i64, i64* @key_mouse, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = load i64, i64* @key_mouse, align 8
  %13 = load i32, i32* @xterm_kmous, align 4
  %14 = call i32 @strcmp(i64 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = call %struct.TYPE_8__* @TerminalOf(%struct.TYPE_7__* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strstr(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16, %11
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = call i32 @init_xterm_mouse(%struct.TYPE_7__* %25)
  br label %27

27:                                               ; preds = %24, %16
  br label %49

28:                                               ; preds = %8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = call %struct.TYPE_8__* @TerminalOf(%struct.TYPE_7__* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strstr(i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* @xterm_kmous, align 4
  %40 = load i32, i32* @KEY_MOUSE, align 4
  %41 = call i64 @_nc_add_to_try(i32* %38, i32 %39, i32 %40)
  %42 = load i64, i64* @OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = call i32 @init_xterm_mouse(%struct.TYPE_7__* %45)
  br label %47

47:                                               ; preds = %44, %36
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48, %27
  br label %50

50:                                               ; preds = %49, %1
  ret void
}

declare dso_local i32 @AssertTCB(...) #1

declare dso_local i32 @SetSP(...) #1

declare dso_local i32 @strcmp(i64, i32) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @TerminalOf(%struct.TYPE_7__*) #1

declare dso_local i32 @init_xterm_mouse(%struct.TYPE_7__*) #1

declare dso_local i64 @_nc_add_to_try(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
