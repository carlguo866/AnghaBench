; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_font.c_predict_text_width_pango.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_font.c_predict_text_width_pango.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@conn = common dso_local global i32 0, align 4
@root_screen = common dso_local global %struct.TYPE_6__* null, align 8
@root_visual_type = common dso_local global i32 0, align 4
@savedFont = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @predict_text_width_pango to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @predict_text_width_pango(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @conn, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root_screen, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @root_visual_type, align 4
  %16 = call i32* @cairo_xcb_surface_create(i32 %11, i32 %14, i32 %15, i32 1, i32 1)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @cairo_create(i32* %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @create_layout_with_dpi(i32* %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @savedFont, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pango_layout_set_font_description(i32* %21, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i32*, i32** %9, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @pango_layout_set_markup(i32* %30, i8* %31, i64 %32)
  br label %39

34:                                               ; preds = %3
  %35 = load i32*, i32** %9, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @pango_layout_set_text(i32* %35, i8* %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @pango_cairo_update_layout(i32* %40, i32* %41)
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @pango_layout_get_pixel_size(i32* %43, i32* %10, i32* null)
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @g_object_unref(i32* %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @cairo_destroy(i32* %47)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @cairo_surface_destroy(i32* %49)
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32* @cairo_xcb_surface_create(i32, i32, i32, i32, i32) #1

declare dso_local i32* @cairo_create(i32*) #1

declare dso_local i32* @create_layout_with_dpi(i32*) #1

declare dso_local i32 @pango_layout_set_font_description(i32*, i32) #1

declare dso_local i32 @pango_layout_set_markup(i32*, i8*, i64) #1

declare dso_local i32 @pango_layout_set_text(i32*, i8*, i64) #1

declare dso_local i32 @pango_cairo_update_layout(i32*, i32*) #1

declare dso_local i32 @pango_layout_get_pixel_size(i32*, i32*, i32*) #1

declare dso_local i32 @g_object_unref(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
