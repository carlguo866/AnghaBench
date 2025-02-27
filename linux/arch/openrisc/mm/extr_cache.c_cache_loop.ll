; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/mm/extr_cache.c_cache_loop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/mm/extr_cache.c_cache_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @cache_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_loop(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i64 @page_to_pfn(%struct.page* %7)
  %9 = load i64, i64* @PAGE_SHIFT, align 8
  %10 = shl i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @L1_CACHE_BYTES, align 4
  %13 = sub nsw i32 %12, 1
  %14 = xor i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = and i64 %11, %15
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %23, %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = add i64 %19, %20
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @mtspr(i32 %24, i64 %25)
  %27 = load i32, i32* @L1_CACHE_BYTES, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %17

31:                                               ; preds = %17
  ret void
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @mtspr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
