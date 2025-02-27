; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_print_position.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_textbox.c_print_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i32, i32 }

@dialog_vars = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PAGE_WIDTH = common dso_local global i32 0, align 4
@PAGE_LENGTH = common dso_local global i64 0, align 8
@border_attr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32, i32)* @print_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_position(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 -1, i64* %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = call i64 @ftell_obj(%struct.TYPE_7__* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dialog_vars, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @tabize(%struct.TYPE_7__* %17, i64 %20, i64* %11)
  store i64 %21, i64* %10, align 8
  br label %31

22:                                               ; preds = %4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %10, align 8
  %30 = call i64 @find_first(%struct.TYPE_7__* %23, i32 %26, i64 %29)
  store i64 %30, i64* %11, align 8
  br label %31

31:                                               ; preds = %22, %16
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = load i64, i64* %10, align 8
  %47 = add nsw i64 %45, %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PAGE_WIDTH, align 4
  %52 = load i64, i64* @PAGE_LENGTH, align 8
  %53 = add nsw i64 %52, 1
  %54 = load i32, i32* @border_attr, align 4
  %55 = load i32, i32* @border_attr, align 4
  %56 = call i32 @dlg_draw_scrollbar(i32* %32, i64 %33, i64 %40, i64 %47, i32 %50, i32 0, i32 %51, i32 0, i64 %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i64 @ftell_obj(%struct.TYPE_7__*) #1

declare dso_local i64 @tabize(%struct.TYPE_7__*, i64, i64*) #1

declare dso_local i64 @find_first(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @dlg_draw_scrollbar(i32*, i64, i64, i64, i32, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
