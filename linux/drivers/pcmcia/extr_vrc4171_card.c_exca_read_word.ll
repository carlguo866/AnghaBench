; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_exca_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_vrc4171_card.c_exca_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CARD_SLOTB = common dso_local global i32 0, align 4
@CARD_SLOTB_OFFSET = common dso_local global i64 0, align 8
@CARD_CONTROLLER_INDEX = common dso_local global i32 0, align 4
@CARD_CONTROLLER_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @exca_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exca_read_word(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @CARD_SLOTB, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* @CARD_SLOTB_OFFSET, align 8
  %11 = load i64, i64* %4, align 8
  %12 = add nsw i64 %11, %10
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %4, align 8
  %16 = load i32, i32* @CARD_CONTROLLER_INDEX, align 4
  %17 = call i32 @outb(i64 %14, i32 %16)
  %18 = load i32, i32* @CARD_CONTROLLER_DATA, align 4
  %19 = call i32 @inb(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @CARD_CONTROLLER_INDEX, align 4
  %22 = call i32 @outb(i64 %20, i32 %21)
  %23 = load i32, i32* @CARD_CONTROLLER_DATA, align 4
  %24 = call i32 @inb(i32 %23)
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
