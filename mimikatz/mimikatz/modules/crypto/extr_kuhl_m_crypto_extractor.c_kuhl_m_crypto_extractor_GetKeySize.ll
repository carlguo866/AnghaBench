; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_extractor.c_kuhl_m_crypto_extractor_GetKeySize.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/crypto/extr_kuhl_m_crypto_extractor.c_kuhl_m_crypto_extractor_GetKeySize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_crypto_extractor_GetKeySize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 7
  %8 = ashr i32 %7, 3
  %9 = and i32 %8, 7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = add nsw i32 %10, 15
  %12 = ashr i32 %11, 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 8, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 8
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 1
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %22, %23
  %25 = add nsw i32 %24, 2
  %26 = mul nsw i32 10, %25
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
