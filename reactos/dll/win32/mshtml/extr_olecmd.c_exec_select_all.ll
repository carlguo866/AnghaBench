; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_exec_select_all.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_olecmd.c_exec_select_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unsupported args\0A\00", align 1
@NSCMD_SELECTALL = common dso_local global i32 0, align 4
@UPDATE_UI = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32*, i32*)* @exec_select_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_select_all(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %9)
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %4
  %17 = call i32 @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = load i32, i32* @NSCMD_SELECTALL, align 4
  %28 = call i32 @do_ns_command(%struct.TYPE_8__* %26, i32 %27, i32* null)
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = load i32, i32* @UPDATE_UI, align 4
  %32 = call i32 @update_doc(%struct.TYPE_8__* %30, i32 %31)
  %33 = load i32, i32* @S_OK, align 4
  ret i32 %33
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @do_ns_command(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @update_doc(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
