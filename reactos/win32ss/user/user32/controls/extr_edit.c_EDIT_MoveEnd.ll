; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_MoveEnd.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_MoveEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@ES_MULTILINE = common dso_local global i32 0, align 4
@EF_AFTER_WRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i64)* @EDIT_MoveEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_MoveEnd(%struct.TYPE_8__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ES_MULTILINE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EF_AFTER_WRAP, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @EDIT_EM_PosFromChar(%struct.TYPE_8__* %21, i32 %24, i32 %29)
  %31 = call i32 @HIWORD(i32 %30)
  %32 = call i32 @EDIT_CharFromPos(%struct.TYPE_8__* %20, i32 1073741823, i32 %31, i64* %7)
  store i32 %32, i32* %8, align 4
  br label %36

33:                                               ; preds = %12, %3
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = call i32 @get_text_length(%struct.TYPE_8__* %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %19
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %43, %40 ], [ %45, %44 ]
  %48 = load i32, i32* %8, align 4
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @EDIT_EM_SetSel(%struct.TYPE_8__* %37, i32 %47, i32 %48, i64 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = call i32 @EDIT_EM_ScrollCaret(%struct.TYPE_8__* %51)
  ret void
}

declare dso_local i32 @EDIT_CharFromPos(%struct.TYPE_8__*, i32, i32, i64*) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @EDIT_EM_PosFromChar(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @get_text_length(%struct.TYPE_8__*) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_8__*, i32, i32, i64) #1

declare dso_local i32 @EDIT_EM_ScrollCaret(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
