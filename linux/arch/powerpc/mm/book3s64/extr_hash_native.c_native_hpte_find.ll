; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_find.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_native.c_native_hpte_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hash_pte = type { i32 }

@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@htab_address = common dso_local global %struct.hash_pte* null, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32)* @native_hpte_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @native_hpte_find(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hash_pte*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @hpt_hash(i64 %14, i32 %20, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @hpte_encode_avpn(i64 %23, i32 %24, i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @htab_hash_mask, align 8
  %29 = and i64 %27, %28
  %30 = load i64, i64* @HPTES_PER_GROUP, align 8
  %31 = mul i64 %29, %30
  store i64 %31, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %56, %3
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @HPTES_PER_GROUP, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load %struct.hash_pte*, %struct.hash_pte** @htab_address, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %37, i64 %38
  store %struct.hash_pte* %39, %struct.hash_pte** %8, align 8
  %40 = load %struct.hash_pte*, %struct.hash_pte** %8, align 8
  %41 = call i64 @hpte_get_old_v(%struct.hash_pte* %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i64 @HPTE_V_COMPARE(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @HPTE_V_VALID, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %4, align 8
  br label %60

53:                                               ; preds = %46, %36
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %53
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %32

59:                                               ; preds = %32
  store i64 -1, i64* %4, align 8
  br label %60

60:                                               ; preds = %59, %51
  %61 = load i64, i64* %4, align 8
  ret i64 %61
}

declare dso_local i64 @hpt_hash(i64, i32, i32) #1

declare dso_local i64 @hpte_encode_avpn(i64, i32, i32) #1

declare dso_local i64 @hpte_get_old_v(%struct.hash_pte*) #1

declare dso_local i64 @HPTE_V_COMPARE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
