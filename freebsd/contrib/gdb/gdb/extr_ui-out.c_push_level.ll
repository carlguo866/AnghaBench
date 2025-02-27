; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_push_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ui-out.c_push_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i64 }
%struct.ui_out_level = type { i32, i64 }

@MAX_UI_OUT_LEVELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_out*, i32, i8*)* @push_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_level(%struct.ui_out* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ui_out*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ui_out_level*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %9 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %13 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %18 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MAX_UI_OUT_LEVELS, align 8
  %21 = icmp slt i64 %19, %20
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ false, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @gdb_assert(i32 %24)
  %26 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %27 = call %struct.ui_out_level* @current_level(%struct.ui_out* %26)
  store %struct.ui_out_level* %27, %struct.ui_out_level** %7, align 8
  %28 = load %struct.ui_out_level*, %struct.ui_out_level** %7, align 8
  %29 = getelementptr inbounds %struct.ui_out_level, %struct.ui_out_level* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ui_out_level*, %struct.ui_out_level** %7, align 8
  %32 = getelementptr inbounds %struct.ui_out_level, %struct.ui_out_level* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ui_out*, %struct.ui_out** %4, align 8
  %34 = getelementptr inbounds %struct.ui_out, %struct.ui_out* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  ret i32 %36
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local %struct.ui_out_level* @current_level(%struct.ui_out*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
