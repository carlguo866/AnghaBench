; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/mappi2/extr_io.c__inw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/platforms/mappi2/extr_io.c__inw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LAN_IOSTART = common dso_local global i64 0, align 8
@LAN_IOEND = common dso_local global i64 0, align 8
@M32R_PCC_IOEND0 = common dso_local global i64 0, align 8
@M32R_PCC_IOSTART0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @_inw(i64 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @LAN_IOSTART, align 8
  %6 = icmp uge i64 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @LAN_IOEND, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @PORT2ADDR_NE(i64 %12)
  %14 = call zeroext i16 @_ne_inw(i32 %13)
  store i16 %14, i16* %2, align 2
  br label %20

15:                                               ; preds = %7, %1
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @PORT2ADDR(i64 %16)
  %18 = inttoptr i64 %17 to i16*
  %19 = load volatile i16, i16* %18, align 2
  store i16 %19, i16* %2, align 2
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i16, i16* %2, align 2
  ret i16 %21
}

declare dso_local zeroext i16 @_ne_inw(i32) #1

declare dso_local i32 @PORT2ADDR_NE(i64) #1

declare dso_local i64 @PORT2ADDR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
