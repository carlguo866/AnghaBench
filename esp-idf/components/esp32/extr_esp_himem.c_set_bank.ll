; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_esp_himem.c_set_bank.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_esp_himem.c_set_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOC_EXTRAM_DATA_LOW = common dso_local global i64 0, align 8
@CACHE_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @set_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_bank(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @SOC_EXTRAM_DATA_LOW, align 8
  %9 = load i32, i32* @CACHE_BLOCKSIZE, align 4
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %8, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CACHE_BLOCKSIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @cache_sram_mmu_set(i32 0, i32 0, i64 %13, i32 %16, i32 32, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* @SOC_EXTRAM_DATA_LOW, align 8
  %24 = load i32, i32* @CACHE_BLOCKSIZE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @CACHE_BLOCKSIZE, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @cache_sram_mmu_set(i32 1, i32 0, i64 %28, i32 %31, i32 32, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  ret void
}

declare dso_local i32 @cache_sram_mmu_set(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
