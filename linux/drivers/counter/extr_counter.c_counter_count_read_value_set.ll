; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_read_value_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_count_read_value_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_count_read_value = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @counter_count_read_value_set(%struct.counter_count_read_value* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.counter_count_read_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.counter_count_read_value* %0, %struct.counter_count_read_value** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %18 [
    i32 128, label %8
  ]

8:                                                ; preds = %3
  %9 = load %struct.counter_count_read_value*, %struct.counter_count_read_value** %4, align 8
  %10 = getelementptr inbounds %struct.counter_count_read_value, %struct.counter_count_read_value* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @sprintf(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.counter_count_read_value*, %struct.counter_count_read_value** %4, align 8
  %17 = getelementptr inbounds %struct.counter_count_read_value, %struct.counter_count_read_value* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.counter_count_read_value*, %struct.counter_count_read_value** %4, align 8
  %20 = getelementptr inbounds %struct.counter_count_read_value, %struct.counter_count_read_value* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %8
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
