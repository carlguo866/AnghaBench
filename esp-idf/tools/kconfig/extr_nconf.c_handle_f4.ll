; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_handle_f4.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_handle_f4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32 }

@main_window = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Show all symbols?\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"   <Show All>   \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"<Don't show all>\00", align 1
@show_all_items = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.menu*)* @handle_f4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_f4(i32* %0, %struct.menu* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.menu*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.menu* %1, %struct.menu** %4, align 8
  %6 = load i32, i32* @main_window, align 4
  %7 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @btn_dialog(i32 %6, i32 %7, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* @show_all_items, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* @show_all_items, align 4
  br label %16

16:                                               ; preds = %15, %12
  br label %17

17:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @btn_dialog(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
