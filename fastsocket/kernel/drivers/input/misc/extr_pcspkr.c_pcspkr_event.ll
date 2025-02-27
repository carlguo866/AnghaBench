; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_pcspkr.c_pcspkr_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_pcspkr.c_pcspkr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@EV_SND = common dso_local global i32 0, align 4
@PIT_TICK_RATE = common dso_local global i32 0, align 4
@i8253_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @pcspkr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcspkr_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @EV_SND, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %59

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %23
  ]

18:                                               ; preds = %16
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1000, i32* %9, align 4
  br label %22

22:                                               ; preds = %21, %18
  br label %23

23:                                               ; preds = %16, %22
  br label %25

24:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %59

25:                                               ; preds = %23
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 20
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 32767
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @PIT_TICK_RATE, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %28, %25
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @spin_lock_irqsave(i32* @i8253_lock, i64 %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = call i32 @outb_p(i32 182, i32 67)
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, 255
  %44 = call i32 @outb_p(i32 %43, i32 66)
  %45 = load i32, i32* %10, align 4
  %46 = lshr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = call i32 @outb(i32 %47, i32 66)
  %49 = call i32 @inb_p(i32 97)
  %50 = or i32 %49, 3
  %51 = call i32 @outb_p(i32 %50, i32 97)
  br label %56

52:                                               ; preds = %35
  %53 = call i32 @inb_p(i32 97)
  %54 = and i32 %53, 252
  %55 = call i32 @outb(i32 %54, i32 97)
  br label %56

56:                                               ; preds = %52, %40
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @i8253_lock, i64 %57)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %24, %15
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
