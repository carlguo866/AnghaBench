; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bitfield.c_test_variables.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bitfield.c_test_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@u8 = common dso_local global i32 0, align 4
@u16 = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@u64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_variables() #0 {
  %1 = load i32, i32* @u8, align 4
  %2 = call i32 @CHECK(i32 %1, i32 15)
  %3 = load i32, i32* @u8, align 4
  %4 = call i32 @CHECK(i32 %3, i32 240)
  %5 = load i32, i32* @u8, align 4
  %6 = call i32 @CHECK(i32 %5, i32 56)
  %7 = load i32, i32* @u16, align 4
  %8 = call i32 @CHECK(i32 %7, i32 56)
  %9 = load i32, i32* @u16, align 4
  %10 = call i32 @CHECK(i32 %9, i32 896)
  %11 = load i32, i32* @u16, align 4
  %12 = call i32 @CHECK(i32 %11, i32 14336)
  %13 = load i32, i32* @u16, align 4
  %14 = call i32 @CHECK(i32 %13, i32 32768)
  %15 = load i32, i32* @u32, align 4
  %16 = call i32 @CHECK(i32 %15, i32 -2147483648)
  %17 = load i32, i32* @u32, align 4
  %18 = call i32 @CHECK(i32 %17, i32 2130706432)
  %19 = load i32, i32* @u32, align 4
  %20 = call i32 @CHECK(i32 %19, i32 132120576)
  %21 = load i32, i32* @u32, align 4
  %22 = call i32 @CHECK(i32 %21, i32 98304)
  %23 = load i32, i32* @u64, align 4
  %24 = call i32 @CHECK(i32 %23, i32 0)
  %25 = load i32, i32* @u64, align 4
  %26 = call i32 @CHECK(i32 %25, i32 0)
  %27 = load i32, i32* @u64, align 4
  %28 = call i32 @CHECK(i32 %27, i32 0)
  %29 = load i32, i32* @u64, align 4
  %30 = call i32 @CHECK(i32 %29, i32 -2147483648)
  %31 = load i32, i32* @u64, align 4
  %32 = call i32 @CHECK(i32 %31, i32 2130706432)
  %33 = load i32, i32* @u64, align 4
  %34 = call i32 @CHECK(i32 %33, i32 402653184)
  %35 = load i32, i32* @u64, align 4
  %36 = call i32 @CHECK(i32 %35, i32 -134217728)
  ret i32 0
}

declare dso_local i32 @CHECK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
