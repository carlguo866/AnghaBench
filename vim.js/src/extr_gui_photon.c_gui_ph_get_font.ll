; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_ph_get_font.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_ph_get_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@MAX_FONT_TAG = common dso_local global i32 0, align 4
@PHFONT_INFO_FIXED = common dso_local global i32 0, align 4
@PF_STYLE_BOLD = common dso_local global i32 0, align 4
@PHFONT_INFO_BOLD = common dso_local global i32 0, align 4
@PF_STYLE_ANTIALIAS = common dso_local global i32 0, align 4
@PHFONT_INFO_ALIAS = common dso_local global i32 0, align 4
@PF_STYLE_ITALIC = common dso_local global i32 0, align 4
@PHFONT_INFO_ITALIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32, i32)* @gui_ph_get_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gui_ph_get_font(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @MAX_FONT_TAG, align 4
  %14 = call i32* @alloc(i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %78

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = call i32* @PfGenerateFontName(i32* %18, i32 %19, i32 %20, i32* %21)
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %75

24:                                               ; preds = %17
  %25 = load i32, i32* @PHFONT_INFO_FIXED, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @PF_STYLE_BOLD, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @PHFONT_INFO_BOLD, align 4
  %32 = load i32, i32* %12, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @PF_STYLE_ANTIALIAS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @PHFONT_INFO_ALIAS, align 4
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @PF_STYLE_ITALIC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @PHFONT_INFO_ITALIC, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @PfQueryFontInfo(i32* %53, %struct.TYPE_3__* %11)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32*, i32** %10, align 8
  store i32* %73, i32** %5, align 8
  br label %79

74:                                               ; preds = %65, %59
  br label %75

75:                                               ; preds = %74, %17
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @vim_free(i32* %76)
  br label %78

78:                                               ; preds = %75, %4
  store i32* null, i32** %5, align 8
  br label %79

79:                                               ; preds = %78, %72
  %80 = load i32*, i32** %5, align 8
  ret i32* %80
}

declare dso_local i32* @alloc(i32) #1

declare dso_local i32* @PfGenerateFontName(i32*, i32, i32, i32*) #1

declare dso_local i32 @PfQueryFontInfo(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @vim_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
