; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_relayout.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_relayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layout_em = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@doc = common dso_local global i32 0, align 4
@currentpage = common dso_local global i32 0, align 4
@layout_w = common dso_local global i32 0, align 4
@layout_h = common dso_local global i32 0, align 4
@history_count = common dso_local global i64 0, align 8
@future_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @relayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relayout() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @layout_em, align 4
  %3 = icmp slt i32 %2, 6
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 6, i32* @layout_em, align 4
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i32, i32* @layout_em, align 4
  %7 = icmp sgt i32 %6, 36
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 36, i32* @layout_em, align 4
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i32, i32* @ctx, align 4
  %11 = load i32, i32* @doc, align 4
  %12 = call i64 @fz_is_document_reflowable(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load i32, i32* @ctx, align 4
  %16 = load i32, i32* @doc, align 4
  %17 = load i32, i32* @currentpage, align 4
  %18 = call i32 @fz_make_bookmark(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @ctx, align 4
  %20 = load i32, i32* @doc, align 4
  %21 = load i32, i32* @layout_w, align 4
  %22 = load i32, i32* @layout_h, align 4
  %23 = load i32, i32* @layout_em, align 4
  %24 = call i32 @fz_layout_document(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @ctx, align 4
  %26 = load i32, i32* @doc, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @fz_lookup_bookmark(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* @currentpage, align 4
  store i64 0, i64* @history_count, align 8
  store i64 0, i64* @future_count, align 8
  %29 = call i32 (...) @load_page()
  %30 = call i32 (...) @render_page()
  %31 = call i32 (...) @update_title()
  br label %32

32:                                               ; preds = %14, %9
  ret void
}

declare dso_local i64 @fz_is_document_reflowable(i32, i32) #1

declare dso_local i32 @fz_make_bookmark(i32, i32, i32) #1

declare dso_local i32 @fz_layout_document(i32, i32, i32, i32, i32) #1

declare dso_local i32 @fz_lookup_bookmark(i32, i32, i32) #1

declare dso_local i32 @load_page(...) #1

declare dso_local i32 @render_page(...) #1

declare dso_local i32 @update_title(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
