; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c__set_memory_wc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pageattr.c__set_memory_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PAGE_CACHE_UC_MINUS = common dso_local global i32 0, align 4
@_PAGE_CACHE_WC = common dso_local global i32 0, align 4
@_PAGE_CACHE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_set_memory_wc(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  store i64 %7, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @_PAGE_CACHE_UC_MINUS, align 4
  %10 = call i32 @__pgprot(i32 %9)
  %11 = call i32 @change_page_attr_set(i64* %3, i32 %8, i32 %10, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @_PAGE_CACHE_WC, align 4
  %17 = call i32 @__pgprot(i32 %16)
  %18 = load i32, i32* @_PAGE_CACHE_MASK, align 4
  %19 = call i32 @__pgprot(i32 %18)
  %20 = call i32 @change_page_attr_set_clr(i64* %6, i32 %15, i32 %17, i32 %19, i32 0, i32 0, i32* null)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %14, %2
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @change_page_attr_set(i64*, i32, i32, i32) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @change_page_attr_set_clr(i64*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
