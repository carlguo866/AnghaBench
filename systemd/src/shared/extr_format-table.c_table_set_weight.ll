; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_format-table.c_table_set_weight.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_format-table.c_table_set_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DEFAULT_WEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @table_set_weight(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @assert(i32* %9)
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @assert(i32* %11)
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @DEFAULT_WEIGHT, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @table_dedup_cell(i32* %18, i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call %struct.TYPE_2__* @table_get_data(i32* %27, i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %25, %23
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @table_dedup_cell(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @table_get_data(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
