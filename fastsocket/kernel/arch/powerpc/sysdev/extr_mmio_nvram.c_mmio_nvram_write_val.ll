; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mmio_nvram.c_mmio_nvram_write_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/extr_mmio_nvram.c_mmio_nvram_write_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mmio_nvram_len = common dso_local global i32 0, align 4
@mmio_nvram_lock = common dso_local global i32 0, align 4
@mmio_nvram_start = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmio_nvram_write_val(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @mmio_nvram_len, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @mmio_nvram_lock, i64 %10)
  %12 = load i8, i8* %4, align 1
  %13 = load i64, i64* @mmio_nvram_start, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = call i32 @iowrite8(i8 zeroext %12, i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @mmio_nvram_lock, i64 %18)
  br label %20

20:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite8(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
