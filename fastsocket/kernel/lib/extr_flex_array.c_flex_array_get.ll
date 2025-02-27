; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_flex_array.c_flex_array_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flex_array = type { i32, %struct.flex_array_part** }
%struct.flex_array_part = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @flex_array_get(%struct.flex_array* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.flex_array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.flex_array_part*, align 8
  store %struct.flex_array* %0, %struct.flex_array** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @fa_element_to_part_nr(%struct.flex_array* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %13 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp uge i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %19 = call i64 @elements_fit_in_base(%struct.flex_array* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %23 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %22, i32 0, i32 1
  %24 = load %struct.flex_array_part**, %struct.flex_array_part*** %23, align 8
  %25 = getelementptr inbounds %struct.flex_array_part*, %struct.flex_array_part** %24, i64 0
  %26 = bitcast %struct.flex_array_part** %25 to %struct.flex_array_part*
  store %struct.flex_array_part* %26, %struct.flex_array_part** %7, align 8
  br label %39

27:                                               ; preds = %17
  %28 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %29 = getelementptr inbounds %struct.flex_array, %struct.flex_array* %28, i32 0, i32 1
  %30 = load %struct.flex_array_part**, %struct.flex_array_part*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.flex_array_part*, %struct.flex_array_part** %30, i64 %32
  %34 = load %struct.flex_array_part*, %struct.flex_array_part** %33, align 8
  store %struct.flex_array_part* %34, %struct.flex_array_part** %7, align 8
  %35 = load %struct.flex_array_part*, %struct.flex_array_part** %7, align 8
  %36 = icmp ne %struct.flex_array_part* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  store i8* null, i8** %3, align 8
  br label %47

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %21
  %40 = load %struct.flex_array_part*, %struct.flex_array_part** %7, align 8
  %41 = getelementptr inbounds %struct.flex_array_part, %struct.flex_array_part* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.flex_array*, %struct.flex_array** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @index_inside_part(%struct.flex_array* %43, i32 %44)
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %39, %37, %16
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i32 @fa_element_to_part_nr(%struct.flex_array*, i32) #1

declare dso_local i64 @elements_fit_in_base(%struct.flex_array*) #1

declare dso_local i64 @index_inside_part(%struct.flex_array*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
