; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mac.c_MACvSetDmaLength.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mac.c_MACvSetDmaLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_REG_FCR0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MACvSetDmaLength(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 4
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MAC_REG_FCR0, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @VNSvInPortB(i64 %12, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 252
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @MAC_REG_FCR0, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @VNSvOutPortB(i64 %20, i32 %21)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VNSvInPortB(i64, i32*) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
