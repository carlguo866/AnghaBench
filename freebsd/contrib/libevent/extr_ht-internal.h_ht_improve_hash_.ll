; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_ht-internal.h_ht_improve_hash_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_ht-internal.h_ht_improve_hash_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ht_improve_hash_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht_improve_hash_(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = shl i32 %3, 9
  %5 = xor i32 %4, -1
  %6 = load i32, i32* %2, align 4
  %7 = add i32 %6, %5
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = lshr i32 %8, 14
  %10 = load i32, i32* %2, align 4
  %11 = shl i32 %10, 18
  %12 = or i32 %9, %11
  %13 = load i32, i32* %2, align 4
  %14 = xor i32 %13, %12
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = shl i32 %15, 4
  %17 = load i32, i32* %2, align 4
  %18 = add i32 %17, %16
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = lshr i32 %19, 10
  %21 = load i32, i32* %2, align 4
  %22 = shl i32 %21, 22
  %23 = or i32 %20, %22
  %24 = load i32, i32* %2, align 4
  %25 = xor i32 %24, %23
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
