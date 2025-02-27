; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_wr_rd_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_wr_rd_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2c = type { i64 }

@SCB_CORE_REV_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_i2c*)* @img_i2c_wr_rd_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_i2c_wr_rd_fence(%struct.img_i2c* %0) #0 {
  %2 = alloca %struct.img_i2c*, align 8
  store %struct.img_i2c* %0, %struct.img_i2c** %2, align 8
  %3 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %4 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %9 = load i32, i32* @SCB_CORE_REV_REG, align 4
  %10 = call i32 @img_i2c_writel(%struct.img_i2c* %8, i32 %9, i32 0)
  %11 = load %struct.img_i2c*, %struct.img_i2c** %2, align 8
  %12 = load i32, i32* @SCB_CORE_REV_REG, align 4
  %13 = call i32 @img_i2c_writel(%struct.img_i2c* %11, i32 %12, i32 0)
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @img_i2c_writel(%struct.img_i2c*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
