; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_get_single_rate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_get_single_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }

@ONLY_FIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"get_single_rate(%016llx): %p %p\0A\00", align 1
@FLAG_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_single_rate(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.item*, align 8
  %9 = alloca %struct.item*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @ONLY_FIND, align 4
  %12 = call %struct.item* @get_item_f(i64 %10, i32 %11)
  store %struct.item* %12, %struct.item** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @get_idx_item(i64 %13)
  %15 = inttoptr i64 %14 to %struct.item*
  store %struct.item* %15, %struct.item** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.item*, %struct.item** %8, align 8
  %18 = load %struct.item*, %struct.item** %9, align 8
  %19 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %16, %struct.item* %17, %struct.item* %18)
  %20 = load %struct.item*, %struct.item** %9, align 8
  %21 = icmp ne %struct.item* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %3
  %23 = load %struct.item*, %struct.item** %8, align 8
  %24 = icmp ne %struct.item* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.item*, %struct.item** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @get_rate_item(%struct.item* %28, i32 %29)
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  store i32 1, i32* %4, align 4
  br label %48

32:                                               ; preds = %3
  %33 = load %struct.item*, %struct.item** %8, align 8
  %34 = icmp ne %struct.item* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.item*, %struct.item** %8, align 8
  %37 = getelementptr inbounds %struct.item, %struct.item* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FLAG_DELETED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %32
  store i32 0, i32* %4, align 4
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.item*, %struct.item** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @get_rate_item(%struct.item* %44, i32 %45)
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %42, %22
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.item* @get_item_f(i64, i32) #1

declare dso_local i64 @get_idx_item(i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, %struct.item*, %struct.item*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_rate_item(%struct.item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
