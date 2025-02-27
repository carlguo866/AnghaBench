; ModuleID = '/home/carl/AnghaBench/i3/src/extr_manage.c_manage_existing_windows.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_manage.c_manage_existing_windows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @manage_existing_windows(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @conn, align 4
  %9 = load i32, i32* @conn, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @xcb_query_tree(i32 %9, i32 %10)
  %12 = call i32* @xcb_query_tree_reply(i32 %8, i32 %11, i32 0)
  store i32* %12, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %69

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @xcb_query_tree_children_length(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32* @smalloc(i32 %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i32* @xcb_query_tree_children(i32* %23)
  store i32* %24, i32** %6, align 8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %41, %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i32, i32* @conn, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @xcb_get_window_attributes(i32 %30, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %25

44:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %61, %44
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @manage_window(i32 %54, i32 %59, i32 1)
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %45

64:                                               ; preds = %45
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @free(i32* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @free(i32* %67)
  br label %69

69:                                               ; preds = %64, %14
  ret void
}

declare dso_local i32* @xcb_query_tree_reply(i32, i32, i32) #1

declare dso_local i32 @xcb_query_tree(i32, i32) #1

declare dso_local i32 @xcb_query_tree_children_length(i32*) #1

declare dso_local i32* @smalloc(i32) #1

declare dso_local i32* @xcb_query_tree_children(i32*) #1

declare dso_local i32 @xcb_get_window_attributes(i32, i32) #1

declare dso_local i32 @manage_window(i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
