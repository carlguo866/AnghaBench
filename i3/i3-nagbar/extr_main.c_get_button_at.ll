; ModuleID = '/home/carl/AnghaBench/i3/i3-nagbar/extr_main.c_get_button_at.c'
source_filename = "/home/carl/AnghaBench/i3/i3-nagbar/extr_main.c_get_button_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@buttoncnt = common dso_local global i32 0, align 4
@buttons = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i64, i64)* @get_button_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @get_button_at(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @buttoncnt, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buttons, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %12, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %11
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buttons, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buttons, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %27, %33
  %35 = icmp sle i64 %21, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @buttons, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %3, align 8
  br label %46

41:                                               ; preds = %20, %11
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %7

45:                                               ; preds = %7
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %46

46:                                               ; preds = %45, %36
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
