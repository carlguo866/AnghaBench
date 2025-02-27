; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_point_double_small.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_point_double_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @point_double_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @point_double_small(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %16, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @smallfelem_expand(i32 %19, i32 %20)
  %22 = load i32, i32* %17, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @smallfelem_expand(i32 %22, i32 %23)
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @smallfelem_expand(i32 %25, i32 %26)
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = call i32 @point_double(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @felem_shrink(i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @felem_shrink(i32 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @felem_shrink(i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @smallfelem_expand(i32, i32) #1

declare dso_local i32 @point_double(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @felem_shrink(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
