; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_array_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/dc/extr_stack.c_array_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array = type { i64, %struct.array* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.array*)* @array_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_free(%struct.array* %0) #0 {
  %2 = alloca %struct.array*, align 8
  %3 = alloca i64, align 8
  store %struct.array* %0, %struct.array** %2, align 8
  %4 = load %struct.array*, %struct.array** %2, align 8
  %5 = icmp eq %struct.array* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %31

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %21, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.array*, %struct.array** %2, align 8
  %11 = getelementptr inbounds %struct.array, %struct.array* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.array*, %struct.array** %2, align 8
  %16 = getelementptr inbounds %struct.array, %struct.array* %15, i32 0, i32 1
  %17 = load %struct.array*, %struct.array** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.array, %struct.array* %17, i64 %18
  %20 = call i32 @stack_free_value(%struct.array* %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.array*, %struct.array** %2, align 8
  %26 = getelementptr inbounds %struct.array, %struct.array* %25, i32 0, i32 1
  %27 = load %struct.array*, %struct.array** %26, align 8
  %28 = call i32 @free(%struct.array* %27)
  %29 = load %struct.array*, %struct.array** %2, align 8
  %30 = call i32 @free(%struct.array* %29)
  br label %31

31:                                               ; preds = %24, %6
  ret void
}

declare dso_local i32 @stack_free_value(%struct.array*) #1

declare dso_local i32 @free(%struct.array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
