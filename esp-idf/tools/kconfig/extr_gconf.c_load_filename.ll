; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_load_filename.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_gconf.c_load_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to load configuration !\00", align 1
@rootmenu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @load_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_filename(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @GTK_FILE_SELECTION(i32 %6)
  %8 = call i32* @gtk_file_selection_get_filename(i32 %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @conf_read(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = call i32 @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @text_insert_msg(i32 %13, i32 %14)
  br label %18

16:                                               ; preds = %2
  %17 = call i32 @display_tree(i32* @rootmenu)
  br label %18

18:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32* @gtk_file_selection_get_filename(i32) #1

declare dso_local i32 @GTK_FILE_SELECTION(i32) #1

declare dso_local i64 @conf_read(i32*) #1

declare dso_local i32 @text_insert_msg(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @display_tree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
