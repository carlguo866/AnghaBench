; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_SetIndent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_SetIndent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MINIMUM_INDENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @TREEVIEW_SetIndent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TREEVIEW_SetIndent(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @MINIMUM_INDENT, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @MINIMUM_INDENT, align 8
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @TREEVIEW_UpdateSubTree(%struct.TYPE_6__* %21, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = call i32 @TREEVIEW_UpdateScrollBars(%struct.TYPE_6__* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = call i32 @TREEVIEW_Invalidate(%struct.TYPE_6__* %28, i32* null)
  br label %30

30:                                               ; preds = %17, %11
  ret i32 0
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @TREEVIEW_UpdateSubTree(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @TREEVIEW_UpdateScrollBars(%struct.TYPE_6__*) #1

declare dso_local i32 @TREEVIEW_Invalidate(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
