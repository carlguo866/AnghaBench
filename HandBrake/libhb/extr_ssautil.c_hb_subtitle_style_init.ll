; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_ssautil.c_hb_subtitle_style_init.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_ssautil.c_hb_subtitle_style_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"[V4\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\0AFormat:\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\0AStyle:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hb_subtitle_style_init(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  store i8* %0, i8** %3, align 8
  %11 = call i32* @calloc(i32 1, i32 4)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %81

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %77

18:                                               ; preds = %15
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @strstr(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %76

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @strstr(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %75

28:                                               ; preds = %23
  store i32 7, i32* %7, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 8
  %31 = call i8* @sgetline(i8* %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i8** @get_fields(i8* %32, i32 0)
  store i8** %33, i8*** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i8**, i8*** %6, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %74

38:                                               ; preds = %28
  %39 = load i8**, i8*** %6, align 8
  %40 = call i32 @fill_field_indicies(i8** %39, i32* %9)
  %41 = load i8*, i8** %5, align 8
  %42 = call i8* @strstr(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %63, %38
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = call i8* @sgetline(i8* %50)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i8** @get_fields(i8* %52, i32 0)
  store i8** %53, i8*** %10, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load i8**, i8*** %10, align 8
  %58 = call i64 @add_style(i32* %56, i8** %57, i32* %9)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load i8**, i8*** %10, align 8
  %62 = call i32 @hb_str_vfree(i8** %61)
  br label %71

63:                                               ; preds = %46
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i8* @strchr(i8* %67, i8 signext 10)
  store i8* %68, i8** %5, align 8
  store i32 1, i32* %7, align 4
  %69 = load i8**, i8*** %10, align 8
  %70 = call i32 @hb_str_vfree(i8** %69)
  br label %43

71:                                               ; preds = %60, %43
  %72 = load i8**, i8*** %6, align 8
  %73 = call i32 @hb_str_vfree(i8** %72)
  br label %74

74:                                               ; preds = %71, %28
  br label %75

75:                                               ; preds = %74, %23
  br label %76

76:                                               ; preds = %75, %18
  br label %77

77:                                               ; preds = %76, %15
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @ssa_style_reset(i32* %78)
  %80 = load i32*, i32** %4, align 8
  store i32* %80, i32** %2, align 8
  br label %81

81:                                               ; preds = %77, %14
  %82 = load i32*, i32** %2, align 8
  ret i32* %82
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @sgetline(i8*) #1

declare dso_local i8** @get_fields(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fill_field_indicies(i8**, i32*) #1

declare dso_local i64 @add_style(i32*, i8**, i32*) #1

declare dso_local i32 @hb_str_vfree(i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ssa_style_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
