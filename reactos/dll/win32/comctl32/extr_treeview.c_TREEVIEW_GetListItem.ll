; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_GetListItem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_treeview.c_TREEVIEW_GetListItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32)* @TREEVIEW_GetListItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @TREEVIEW_GetListItem(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32* (i32*, i32*)*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32* (i32*, i32*)* @TREEVIEW_GetNextListItem, i32* (i32*, i32*)** %8, align 8
  br label %26

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  store i32* (i32*, i32*)* @TREEVIEW_GetPrevListItem, i32* (i32*, i32*)** %8, align 8
  br label %25

23:                                               ; preds = %17
  %24 = load i32*, i32** %6, align 8
  store i32* %24, i32** %4, align 8
  br label %51

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %16
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %9, align 8
  %29 = load i32* (i32*, i32*)*, i32* (i32*, i32*)** %8, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* %29(i32* %30, i32* %31)
  store i32* %32, i32** %6, align 8
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i1 [ false, %33 ], [ %39, %37 ]
  br i1 %41, label %27, label %42

42:                                               ; preds = %40
  %43 = load i32*, i32** %6, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  br label %49

47:                                               ; preds = %42
  %48 = load i32*, i32** %9, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32* [ %46, %45 ], [ %48, %47 ]
  store i32* %50, i32** %4, align 8
  br label %51

51:                                               ; preds = %49, %23
  %52 = load i32*, i32** %4, align 8
  ret i32* %52
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @TREEVIEW_GetNextListItem(i32*, i32*) #1

declare dso_local i32* @TREEVIEW_GetPrevListItem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
