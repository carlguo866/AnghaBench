; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_common.c_pmap_get_cache_attributes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_common.c_pmap_get_cache_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_managed_page = common dso_local global i64 0, align 8
@pmap_phys_attributes = common dso_local global i32* null, align 8
@PHYS_PTA = common dso_local global i32 0, align 4
@INTEL_PTE_PTA = common dso_local global i32 0, align 4
@PHYS_NCACHE = common dso_local global i32 0, align 4
@INTEL_EPT_WB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_get_cache_attributes(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @last_managed_page, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @ppn_to_pai(i32 %12)
  %14 = call i32 @IS_MANAGED_PAGE(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @PTE_NCACHE(i64 %17)
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %11
  %20 = load i32*, i32** @pmap_phys_attributes, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @ppn_to_pai(i32 %21)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @PHYS_PTA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @INTEL_PTE_PTA, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %29, %19
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PHYS_NCACHE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @PTE_NCACHE(i64 %42)
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %54

46:                                               ; preds = %36
  %47 = load i64, i64* %5, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @INTEL_EPT_WB, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %16, %10
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @IS_MANAGED_PAGE(i64) #1

declare dso_local i64 @ppn_to_pai(i32) #1

declare dso_local i32 @PTE_NCACHE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
