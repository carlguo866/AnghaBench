; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_i2c_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_i2c_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt1*, i32, i32*, i32)* @pt1_i2c_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt1_i2c_write_byte(%struct.pt1* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.pt1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %22, %4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.pt1*, %struct.pt1** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 7, %17
  %19 = ashr i32 %16, %18
  %20 = and i32 %19, 1
  %21 = call i32 @pt1_i2c_write_bit(%struct.pt1* %14, i32 %15, i32* %6, i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.pt1*, %struct.pt1** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pt1_i2c_write_bit(%struct.pt1* %26, i32 %27, i32* %6, i32 1)
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  ret void
}

declare dso_local i32 @pt1_i2c_write_bit(%struct.pt1*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
