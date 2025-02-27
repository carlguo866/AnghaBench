; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_gpte_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_gpte_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.lg_cpu*, i32, i64)* @gpte_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gpte_addr(%struct.lg_cpu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.lg_cpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.lg_cpu* %0, %struct.lg_cpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @pgd_pfn(i32 %8)
  %10 = load i64, i64* @PAGE_SHIFT, align 8
  %11 = shl i64 %9, %10
  store i64 %11, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @pgd_flags(i32 %12)
  %14 = load i32, i32* @_PAGE_PRESENT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @pte_index(i64 %21)
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = add i64 %20, %24
  ret i64 %25
}

declare dso_local i64 @pgd_pfn(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pgd_flags(i32) #1

declare dso_local i32 @pte_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
