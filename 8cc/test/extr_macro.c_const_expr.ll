; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_macro.c_const_expr.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_macro.c_const_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @const_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @const_expr() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 2, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 @expect(i32 2, i32 %2)
  store i32 4, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @expect(i32 4, i32 %4)
  store i32 100, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @expect(i32 100, i32 %6)
  store i32 101, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @expect(i32 101, i32 %8)
  store i32 102, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @expect(i32 102, i32 %10)
  store i32 103, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @expect(i32 103, i32 %12)
  store i32 104, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @expect(i32 104, i32 %14)
  store i32 7, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @expect(i32 7, i32 %16)
  store i32 9, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @expect(i32 9, i32 %18)
  store i32 15, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @expect(i32 15, i32 %20)
  store i32 11, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @expect(i32 11, i32 %22)
  store i32 12, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @expect(i32 12, i32 %24)
  ret void
}

declare dso_local i32 @expect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
