; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_file_size.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_get_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_get_file_size(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.cache_uri*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64*, i64** %5, align 8
  store i64 -1, i64* %7, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.cache_uri* @get_uri_f(i8* %8, i32 0)
  store %struct.cache_uri* %9, %struct.cache_uri** %6, align 8
  %10 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %11 = icmp eq %struct.cache_uri* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.cache_uri*, %struct.cache_uri** %6, align 8
  %15 = call i64 @cache_uri_get_size(%struct.cache_uri* %14)
  %16 = load i64*, i64** %5, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 0, i32 -1
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %13, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local %struct.cache_uri* @get_uri_f(i8*, i32) #1

declare dso_local i64 @cache_uri_get_size(%struct.cache_uri*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
