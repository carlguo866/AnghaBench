; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_exec_horizontalline.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_exec_horizontalline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unsupported args\0A\00", align 1
@NSCMD_INSERTHR = common dso_local global i32 0, align 4
@UPDATE_UI = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32*)* @exec_horizontalline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_horizontalline(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %9)
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
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @NSCMD_INSERTHR, align 4
  %21 = call i32 @do_ns_command(i32* %19, i32 %20, i32* null)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @UPDATE_UI, align 4
  %24 = call i32 @update_doc(i32* %22, i32 %23)
  %25 = load i32, i32* @S_OK, align 4
  ret i32 %25
}

declare dso_local i32 @TRACE(i8*, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @do_ns_command(i32*, i32, i32*) #1

declare dso_local i32 @update_doc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
