; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_cancel.c_action_cancel_core_content.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_cancel.c_action_cancel_core_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ONLINE_UPDATER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_DIRS_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DOWNLOAD_CORE_CONTENT_DIRS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_CONTENT_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64)* @action_cancel_core_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_cancel_core_content(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %10 = call i32 @menu_entries_get_last_stack(i32* null, i8** %9, i32* null, i32* null, i32* null)
  %11 = load i8*, i8** %9, align 8
  %12 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST, align 4
  %13 = call i32 @msg_hash_to_str(i32 %12)
  %14 = call i64 @string_is_equal(i8* %11, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @MENU_ENUM_LABEL_ONLINE_UPDATER, align 4
  %18 = call i32 @msg_hash_to_str(i32 %17)
  %19 = call i32 @menu_entries_flush_stack(i32 %18, i32 0)
  br label %57

20:                                               ; preds = %4
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_DIRS_LIST, align 4
  %23 = call i32 @msg_hash_to_str(i32 %22)
  %24 = call i64 @string_is_equal(i8* %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @MENU_ENUM_LABEL_ONLINE_UPDATER, align 4
  %28 = call i32 @msg_hash_to_str(i32 %27)
  %29 = call i32 @menu_entries_flush_stack(i32 %28, i32 0)
  br label %56

30:                                               ; preds = %20
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* @MENU_ENUM_LABEL_DOWNLOAD_CORE_CONTENT_DIRS, align 4
  %33 = call i32 @msg_hash_to_str(i32 %32)
  %34 = call i64 @string_is_equal(i8* %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @MENU_ENUM_LABEL_ONLINE_UPDATER, align 4
  %38 = call i32 @msg_hash_to_str(i32 %37)
  %39 = call i32 @menu_entries_flush_stack(i32 %38, i32 0)
  br label %55

40:                                               ; preds = %30
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_LIST, align 4
  %43 = call i32 @msg_hash_to_str(i32 %42)
  %44 = call i64 @string_is_equal(i8* %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @MENU_ENUM_LABEL_ONLINE_UPDATER, align 4
  %48 = call i32 @msg_hash_to_str(i32 %47)
  %49 = call i32 @menu_entries_flush_stack(i32 %48, i32 0)
  br label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @MENU_ENUM_LABEL_ADD_CONTENT_LIST, align 4
  %52 = call i32 @msg_hash_to_str(i32 %51)
  %53 = call i32 @menu_entries_flush_stack(i32 %52, i32 0)
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55, %26
  br label %57

57:                                               ; preds = %56, %16
  ret i32 0
}

declare dso_local i32 @menu_entries_get_last_stack(i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @menu_entries_flush_stack(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
