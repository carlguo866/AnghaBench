; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-out.c_mi_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-out.c_mi_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mi_end(%struct.ui_out* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ui_out*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %9 = call %struct.TYPE_3__* @ui_out_data(%struct.ui_out* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %19

15:                                               ; preds = %3
  %16 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @mi_close(%struct.ui_out* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.TYPE_3__* @ui_out_data(%struct.ui_out*) #1

declare dso_local i32 @mi_close(%struct.ui_out*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
