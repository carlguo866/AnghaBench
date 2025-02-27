; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_settings_page.c_UpdateInputListView.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_settings_page.c_UpdateInputListView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@LVSIL_SMALL = common dso_local global i32 0, align 4
@INPUT_LIST_NODE_FLAG_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @UpdateInputListView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateInputListView(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @LVSIL_SMALL, align 4
  %8 = call i32* @ListView_GetImageList(i32 %6, i32 %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ImageList_RemoveAll(i32* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ListView_DeleteAllItems(i32 %15)
  %17 = call %struct.TYPE_4__* (...) @InputList_GetFirst()
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %4, align 8
  br label %18

18:                                               ; preds = %33, %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @INPUT_LIST_NODE_FLAG_DELETED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = call i32 @AddToInputListView(i32 %29, %struct.TYPE_4__* %30)
  br label %32

32:                                               ; preds = %28, %21
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %4, align 8
  br label %18

37:                                               ; preds = %18
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32* @ListView_GetImageList(i32, i32) #1

declare dso_local i32 @ImageList_RemoveAll(i32*) #1

declare dso_local i32 @ListView_DeleteAllItems(i32) #1

declare dso_local %struct.TYPE_4__* @InputList_GetFirst(...) #1

declare dso_local i32 @AddToInputListView(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
