; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/oaks32r/extr_io.c__outb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/oaks32r/extr_io.c__outb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_outb(i8 zeroext %0, i64 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp uge i64 %5, 768
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %8, 800
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i8, i8* %3, align 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @PORT2ADDR_NE(i64 %12)
  %14 = call i32 @_ne_outb(i8 zeroext %11, i32 %13)
  br label %20

15:                                               ; preds = %7, %2
  %16 = load i8, i8* %3, align 1
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @PORT2ADDR(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  store volatile i8 %16, i8* %19, align 1
  br label %20

20:                                               ; preds = %15, %10
  ret void
}

declare dso_local i32 @_ne_outb(i8 zeroext, i32) #1

declare dso_local i32 @PORT2ADDR_NE(i64) #1

declare dso_local i64 @PORT2ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
