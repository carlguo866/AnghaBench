; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_arith.c_test_basic.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_arith.c_test_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_basic() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @expect(i32 0, i32 0)
  %3 = call i32 @expect(i32 3, i32 3)
  %4 = call i32 @expect(i32 3, i32 3)
  %5 = call i32 @expect(i32 10, i32 10)
  %6 = call i32 @expect(i32 11, i32 11)
  %7 = call i32 @expect(i32 14, i32 14)
  %8 = call i32 @expect(i32 4, i32 4)
  %9 = call i32 @expect(i32 4, i32 4)
  %10 = call i32 @expect(i32 3, i32 3)
  %11 = call i32 @expect(i32 0, i32 0)
  %12 = call i32 @expect(i32 98, i32 98)
  store i32 -1, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @expect(i32 -1, i32 %13)
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @expect(i32 -1, i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @expect(i32 0, i32 %18)
  %20 = call i32 @expect(i32 1, i32 1)
  %21 = call i32 @expect(i32 1, i32 1)
  ret void
}

declare dso_local i32 @expect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
