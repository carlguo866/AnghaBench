; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___cursor_left.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c___cursor_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@PANEL_CMD_REGISTERS = common dso_local global i32 0, align 4
@PANEL_CMD_STACK = common dso_local global i32 0, align 4
@PANEL_CMD_DISASSEMBLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cursor_left(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.TYPE_11__* @__get_cur_panel(i32 %7)
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = load i32, i32* @PANEL_CMD_REGISTERS, align 4
  %14 = call i64 @__check_panel_type(%struct.TYPE_11__* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = load i32, i32* @PANEL_CMD_STACK, align 4
  %19 = call i64 @__check_panel_type(%struct.TYPE_11__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %16, %1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %26, %21
  br label %56

38:                                               ; preds = %16
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = load i32, i32* @PANEL_CMD_DISASSEMBLY, align 4
  %41 = call i64 @__check_panel_type(%struct.TYPE_11__* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = call i32 @__fix_cursor_up(%struct.TYPE_12__* %48)
  br label %55

50:                                               ; preds = %38
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %50, %43
  br label %56

56:                                               ; preds = %55, %37
  ret void
}

declare dso_local %struct.TYPE_11__* @__get_cur_panel(i32) #1

declare dso_local i64 @__check_panel_type(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @__fix_cursor_up(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
