; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_on_show_name1_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_on_show_name1_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@show_name = common dso_local global i32 0, align 4
@tree2_w = common dso_local global i32 0, align 4
@COL_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_show_name1_activate(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_2__* @GTK_CHECK_MENU_ITEM(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* @show_name, align 4
  %10 = load i32, i32* @tree2_w, align 4
  %11 = call i32 @GTK_TREE_VIEW(i32 %10)
  %12 = load i32, i32* @COL_NAME, align 4
  %13 = call i32* @gtk_tree_view_get_column(i32 %11, i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @show_name, align 4
  %19 = call i32 @gtk_tree_view_column_set_visible(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.TYPE_2__* @GTK_CHECK_MENU_ITEM(i32*) #1

declare dso_local i32* @gtk_tree_view_get_column(i32, i32) #1

declare dso_local i32 @GTK_TREE_VIEW(i32) #1

declare dso_local i32 @gtk_tree_view_column_set_visible(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
