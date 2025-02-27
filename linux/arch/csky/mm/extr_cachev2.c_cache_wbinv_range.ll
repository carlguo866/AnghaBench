; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/mm/extr_cachev2.c_cache_wbinv_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/mm/extr_cachev2.c_cache_wbinv_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_CACHE_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_wbinv_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i32, i32* @L1_CACHE_BYTES, align 4
  %8 = sub nsw i32 %7, 1
  %9 = xor i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = and i64 %6, %10
  store i64 %11, i64* %5, align 8
  br label %12

12:                                               ; preds = %18, %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  call void asm sideeffect "dcache.cval1 $0\0A", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %17) #2, !srcloc !2
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* @L1_CACHE_BYTES, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %5, align 8
  br label %12

23:                                               ; preds = %12
  %24 = call i32 (...) @sync_is()
  %25 = load i64, i64* %3, align 8
  %26 = load i32, i32* @L1_CACHE_BYTES, align 4
  %27 = sub nsw i32 %26, 1
  %28 = xor i32 %27, -1
  %29 = sext i32 %28 to i64
  %30 = and i64 %25, %29
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %37, %23
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  call void asm sideeffect "icache.iva $0\0A", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %36) #2, !srcloc !3
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* @L1_CACHE_BYTES, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %5, align 8
  br label %31

42:                                               ; preds = %31
  %43 = call i32 (...) @sync_is()
  ret void
}

declare dso_local i32 @sync_is(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 343}
!3 = !{i32 484}
