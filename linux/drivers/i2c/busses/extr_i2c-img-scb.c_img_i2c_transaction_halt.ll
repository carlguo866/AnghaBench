; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_transaction_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_transaction_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { i32 }

@SCB_CONTROL_REG = common dso_local global i32 0, align 4
@SCB_CONTROL_TRANSACTION_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_i2c*, i32)* @img_i2c_transaction_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_i2c_transaction_halt(%struct.img_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.img_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.img_i2c* %0, %struct.img_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %7 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %35

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %15 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %17 = load i32, i32* @SCB_CONTROL_REG, align 4
  %18 = call i32 @img_i2c_readl(%struct.img_i2c* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load i32, i32* @SCB_CONTROL_TRANSACTION_HALT, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %30

25:                                               ; preds = %12
  %26 = load i32, i32* @SCB_CONTROL_TRANSACTION_HALT, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.img_i2c*, %struct.img_i2c** %3, align 8
  %32 = load i32, i32* @SCB_CONTROL_REG, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @img_i2c_writel(%struct.img_i2c* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %11
  ret void
}

declare dso_local i32 @img_i2c_readl(%struct.img_i2c*, i32) #1

declare dso_local i32 @img_i2c_writel(%struct.img_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
