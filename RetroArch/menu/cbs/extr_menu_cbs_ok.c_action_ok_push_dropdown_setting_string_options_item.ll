; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_push_dropdown_setting_string_options_item.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_push_dropdown_setting_string_options_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*)*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_push_dropdown_setting_string_options_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_push_dropdown_setting_string_options_item(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @atoi(i8* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call %struct.TYPE_8__* @menu_setting_find_enum(i32 %16)
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %13, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %44

21:                                               ; preds = %5
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strlcpy(i32 %26, i8* %27, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_8__*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %41 = call i32 %39(%struct.TYPE_8__* %40)
  br label %42

42:                                               ; preds = %36, %21
  %43 = call i32 @action_cancel_pop_default(i32* null, i32* null, i32 0, i32 0)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %20
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.TYPE_8__* @menu_setting_find_enum(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @action_cancel_pop_default(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
