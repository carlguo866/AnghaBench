; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_parse_media_type.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_rofi_theme_parse_media_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"monitor-id\00", align 1
@THEME_MEDIA_TYPE_MON_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"min-width\00", align 1
@THEME_MEDIA_TYPE_MIN_WIDTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"min-height\00", align 1
@THEME_MEDIA_TYPE_MIN_HEIGHT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"max-width\00", align 1
@THEME_MEDIA_TYPE_MAX_WIDTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"max-height\00", align 1
@THEME_MEDIA_TYPE_MAX_HEIGHT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"min-aspect-ratio\00", align 1
@THEME_MEDIA_TYPE_MIN_ASPECT_RATIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"max-aspect-ratio\00", align 1
@THEME_MEDIA_TYPE_MAX_ASPECT_RATIO = common dso_local global i32 0, align 4
@THEME_MEDIA_TYPE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rofi_theme_parse_media_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @g_strcmp0(i8* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @THEME_MEDIA_TYPE_MON_ID, align 4
  store i32 %8, i32* %2, align 4
  br label %53

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @g_strcmp0(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @THEME_MEDIA_TYPE_MIN_WIDTH, align 4
  store i32 %14, i32* %2, align 4
  br label %53

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @g_strcmp0(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @THEME_MEDIA_TYPE_MIN_HEIGHT, align 4
  store i32 %20, i32* %2, align 4
  br label %53

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @g_strcmp0(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @THEME_MEDIA_TYPE_MAX_WIDTH, align 4
  store i32 %26, i32* %2, align 4
  br label %53

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @g_strcmp0(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @THEME_MEDIA_TYPE_MAX_HEIGHT, align 4
  store i32 %32, i32* %2, align 4
  br label %53

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @g_strcmp0(i8* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @THEME_MEDIA_TYPE_MIN_ASPECT_RATIO, align 4
  store i32 %38, i32* %2, align 4
  br label %53

39:                                               ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @g_strcmp0(i8* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @THEME_MEDIA_TYPE_MAX_ASPECT_RATIO, align 4
  store i32 %44, i32* %2, align 4
  br label %53

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* @THEME_MEDIA_TYPE_INVALID, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %43, %37, %31, %25, %19, %13, %7
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
