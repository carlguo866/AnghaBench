; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c__lookup_address_cpa.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c__lookup_address_cpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpa_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.cpa_data*, i64, i32*)* @_lookup_address_cpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_lookup_address_cpa(%struct.cpa_data* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cpa_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.cpa_data* %0, %struct.cpa_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.cpa_data*, %struct.cpa_data** %5, align 8
  %9 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.cpa_data*, %struct.cpa_data** %5, align 8
  %14 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @pgd_index(i64 %16)
  %18 = add nsw i64 %15, %17
  %19 = load i64, i64* %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @lookup_address_in_pgd(i64 %18, i64 %19, i32* %20)
  store i32* %21, i32** %4, align 8
  br label %26

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @lookup_address(i64 %23, i32* %24)
  store i32* %25, i32** %4, align 8
  br label %26

26:                                               ; preds = %22, %12
  %27 = load i32*, i32** %4, align 8
  ret i32* %27
}

declare dso_local i32* @lookup_address_in_pgd(i64, i64, i32*) #1

declare dso_local i64 @pgd_index(i64) #1

declare dso_local i32* @lookup_address(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
