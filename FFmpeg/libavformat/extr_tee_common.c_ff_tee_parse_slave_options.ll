; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tee_common.c_ff_tee_parse_slave_options.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tee_common.c_ff_tee_parse_slave_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slave_opt_open = common dso_local global i32 0, align 4
@slave_opt_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@slave_opt_delim = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No option found near \22%s\22\0A\00", align 1
@AV_DICT_DONT_STRDUP_KEY = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_tee_parse_slave_options(i8* %0, i8* %1, i32** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* @slave_opt_open, align 4
  %16 = call i64 @strspn(i8* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = load i8**, i8*** %9, align 8
  store i8* %19, i8** %20, align 8
  store i32 0, i32* %5, align 4
  br label %71

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* @slave_opt_close, align 4
  %26 = call i64 @strspn(i8* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8**, i8*** %9, align 8
  store i8* %30, i8** %31, align 8
  store i32 0, i32* %5, align 4
  br label %71

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %60
  %34 = load i32, i32* @slave_opt_delim, align 4
  %35 = call i32 @av_opt_get_key_value(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %34, i32 0, i8** %11, i8** %12)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @av_log(i8* %39, i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %67

43:                                               ; preds = %33
  %44 = load i32**, i32*** %8, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* @AV_DICT_DONT_STRDUP_KEY, align 4
  %48 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @av_dict_set(i32** %44, i8* %45, i8* %46, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %67

54:                                               ; preds = %43
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* @slave_opt_close, align 4
  %57 = call i64 @strspn(i8* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %63

60:                                               ; preds = %54
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  br label %33

63:                                               ; preds = %59
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8**, i8*** %9, align 8
  store i8* %65, i8** %66, align 8
  store i32 0, i32* %5, align 4
  br label %71

67:                                               ; preds = %53, %38
  %68 = load i32**, i32*** %8, align 8
  %69 = call i32 @av_dict_free(i32** %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %63, %28, %18
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @strspn(i8*, i32) #1

declare dso_local i32 @av_opt_get_key_value(i8**, i8*, i32, i32, i8**, i8**) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @av_dict_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
