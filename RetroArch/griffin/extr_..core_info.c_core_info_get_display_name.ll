; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..core_info.c_core_info_get_display_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..core_info.c_core_info_get_display_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"display_name\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_info_get_display_name(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32* @config_file_new_from_path_to_string(i8* %10)
  store i32* %11, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load i32*, i32** %9, align 8
  %17 = call i64 @config_get_string(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @strlcpy(i8* %20, i8* %21, i64 %22)
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @free(i8* %24)
  br label %26

26:                                               ; preds = %19, %15
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @config_file_free(i32* %27)
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32* @config_file_new_from_path_to_string(i8*) #1

declare dso_local i64 @config_get_string(i32*, i8*, i8**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @config_file_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
