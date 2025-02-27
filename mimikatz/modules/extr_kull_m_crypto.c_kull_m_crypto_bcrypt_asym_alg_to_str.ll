; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_bcrypt_asym_alg_to_str.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_crypto.c_kull_m_crypto_bcrypt_asym_alg_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCRYPT_ASYM_ALGORITHMS = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kull_m_crypto_bcrypt_asym_alg_to_str(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32**, i32*** @BCRYPT_ASYM_ALGORITHMS, align 8
  %10 = call i32 @ARRAYSIZE(i32** %9)
  %11 = icmp sle i32 %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load i32**, i32*** @BCRYPT_ASYM_ALGORITHMS, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %13, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %2, align 8
  br label %21

19:                                               ; preds = %7, %1
  %20 = load i32*, i32** %4, align 8
  store i32* %20, i32** %2, align 8
  br label %21

21:                                               ; preds = %19, %12
  %22 = load i32*, i32** %2, align 8
  ret i32* %22
}

declare dso_local i32 @ARRAYSIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
