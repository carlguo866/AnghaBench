; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_config.c_config_map_key_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_config.c_config_map_key_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cur_key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bindings\00", align 1
@parsing_bindings = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"tray_outputs\00", align 1
@parsing_tray_outputs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @config_map_key_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_map_key_cb(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @cur_key, align 4
  %8 = call i32 @FREE(i32 %7)
  %9 = load i64, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @sasprintf(i32* @cur_key, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %9, i8* %10)
  %12 = load i32, i32* @cur_key, align 4
  %13 = call i64 @strcmp(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* @parsing_bindings, align 4
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32, i32* @cur_key, align 4
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* @parsing_tray_outputs, align 4
  br label %21

21:                                               ; preds = %20, %16
  ret i32 1
}

declare dso_local i32 @FREE(i32) #1

declare dso_local i32 @sasprintf(i32*, i8*, i64, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
