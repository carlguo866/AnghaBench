; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_edit.c_create_child_editcontrol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_edit.c_create_child_editcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"AdjustWindowRect failed\0A\00", align 1
@szEditTextPositionClass = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Edit Test\00", align 1
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@hinst = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"CreateWindow EDIT Test failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"EDIT\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Test Text\00", align 1
@WS_CHILD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"CreateWindow EDIT Test Text failed\0A\00", align 1
@winetest_interactive = common dso_local global i64 0, align 8
@SW_SHOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @create_child_editcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_child_editcontrol(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call i32 @SetRect(%struct.TYPE_4__* %7, i32 0, i32 0, i32 300, i32 300)
  %10 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @AdjustWindowRect(%struct.TYPE_4__* %7, i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** @szEditTextPositionClass, align 8
  %16 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %17 = load i32, i32* @CW_USEDEFAULT, align 4
  %18 = load i32, i32* @CW_USEDEFAULT, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %20, %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %25, %27
  %29 = load i32, i32* @hinst, align 4
  %30 = call i32* @CreateWindowExA(i32 0, i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 %23, i32 %28, i32* null, i32* null, i32 %29, i32* null)
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @WS_CHILD, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @hinst, align 4
  %41 = call i32* @CreateWindowExA(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %38, i32 0, i32 0, i32 300, i32 300, i32* %39, i32* null, i32 %40, i32* null)
  store i32* %41, i32** %6, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i64, i64* @winetest_interactive, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %2
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @SW_SHOW, align 4
  %51 = call i32 @ShowWindow(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %2
  %53 = load i32*, i32** %6, align 8
  ret i32* %53
}

declare dso_local i32 @SetRect(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @AdjustWindowRect(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32* @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ShowWindow(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
