; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_cb_window_layout.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_cb_window_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_tree = type { %struct.window* }
%struct.window = type { i32*, i32* }
%struct.format_entry = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_tree*, %struct.format_entry*)* @format_cb_window_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_cb_window_layout(%struct.format_tree* %0, %struct.format_entry* %1) #0 {
  %3 = alloca %struct.format_tree*, align 8
  %4 = alloca %struct.format_entry*, align 8
  %5 = alloca %struct.window*, align 8
  store %struct.format_tree* %0, %struct.format_tree** %3, align 8
  store %struct.format_entry* %1, %struct.format_entry** %4, align 8
  %6 = load %struct.format_tree*, %struct.format_tree** %3, align 8
  %7 = getelementptr inbounds %struct.format_tree, %struct.format_tree* %6, i32 0, i32 0
  %8 = load %struct.window*, %struct.window** %7, align 8
  store %struct.window* %8, %struct.window** %5, align 8
  %9 = load %struct.window*, %struct.window** %5, align 8
  %10 = icmp eq %struct.window* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %31

12:                                               ; preds = %2
  %13 = load %struct.window*, %struct.window** %5, align 8
  %14 = getelementptr inbounds %struct.window, %struct.window* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.window*, %struct.window** %5, align 8
  %19 = getelementptr inbounds %struct.window, %struct.window* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i8* @layout_dump(i32* %20)
  %22 = load %struct.format_entry*, %struct.format_entry** %4, align 8
  %23 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %31

24:                                               ; preds = %12
  %25 = load %struct.window*, %struct.window** %5, align 8
  %26 = getelementptr inbounds %struct.window, %struct.window* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i8* @layout_dump(i32* %27)
  %29 = load %struct.format_entry*, %struct.format_entry** %4, align 8
  %30 = getelementptr inbounds %struct.format_entry, %struct.format_entry* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %11, %24, %17
  ret void
}

declare dso_local i8* @layout_dump(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
