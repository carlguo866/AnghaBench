; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_input_st_uint_cb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_input_st_uint_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @menu_input_st_uint_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_input_st_uint_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = call i8* (...) @menu_input_dialog_get_label_setting_buffer()
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @menu_setting_find(i8* %16)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @setting_set_with_string_representation(i32* %18, i8* %19)
  br label %21

21:                                               ; preds = %14, %9, %2
  %22 = call i32 (...) @menu_input_dialog_end()
  ret void
}

declare dso_local i8* @menu_input_dialog_get_label_setting_buffer(...) #1

declare dso_local i32* @menu_setting_find(i8*) #1

declare dso_local i32 @setting_set_with_string_representation(i32*, i8*) #1

declare dso_local i32 @menu_input_dialog_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
