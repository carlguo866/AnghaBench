; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-out.c_tui_field_skip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-out.c_tui_field_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tui_field_skip(%struct.ui_out* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.ui_out*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %13 = call %struct.TYPE_3__* @ui_out_data(%struct.ui_out* %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %11, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %26

19:                                               ; preds = %5
  %20 = load %struct.ui_out*, %struct.ui_out** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 @tui_field_string(%struct.ui_out* %20, i32 %21, i32 %22, i32 %23, i8* %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.TYPE_3__* @ui_out_data(%struct.ui_out*) #1

declare dso_local i32 @tui_field_string(%struct.ui_out*, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
