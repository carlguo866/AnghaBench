; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_add_multiple_titles.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_queuehandler.c_add_multiple_titles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"title_selected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @add_multiple_titles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_multiple_titles(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @ghb_array_len(i32 %8)
  store i64 %9, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %4, align 8
  %19 = call i32* @ghb_array_get(i32 %17, i64 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @ghb_dict_get_bool(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @queue_add(%struct.TYPE_5__* %24, i32* %25, i32 1)
  br label %27

27:                                               ; preds = %23, %14
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %4, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %10

31:                                               ; preds = %10
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = call i32 @ghb_queue_selection_init(%struct.TYPE_5__* %32)
  ret void
}

declare dso_local i64 @ghb_array_len(i32) #1

declare dso_local i32* @ghb_array_get(i32, i64) #1

declare dso_local i64 @ghb_dict_get_bool(i32*, i8*) #1

declare dso_local i32 @queue_add(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @ghb_queue_selection_init(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
