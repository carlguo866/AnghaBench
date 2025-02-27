; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistz256.c__booth_recode_w7.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistz256.c__booth_recode_w7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_booth_recode_w7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_booth_recode_w7(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = lshr i32 %5, 7
  %7 = sub i32 %6, 1
  %8 = xor i32 %7, -1
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = sub i32 256, %9
  %11 = sub i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = or i32 %14, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = lshr i32 %20, 1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 1
  %24 = add i32 %21, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 1
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 1
  %29 = add i32 %26, %28
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
