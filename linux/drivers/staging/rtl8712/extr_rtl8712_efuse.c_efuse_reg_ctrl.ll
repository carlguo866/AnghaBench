; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_efuse_reg_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_efuse.c_efuse_reg_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@EFUSE_TEST = common dso_local global i64 0, align 8
@EFUSE_CLK_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, i32)* @efuse_reg_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efuse_reg_ctrl(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = load i64, i64* @EFUSE_TEST, align 8
  %11 = add nsw i64 %10, 3
  %12 = call i32 @r8712_read8(%struct._adapter* %9, i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, 128
  store i32 %14, i32* %5, align 4
  %15 = load %struct._adapter*, %struct._adapter** %3, align 8
  %16 = load i64, i64* @EFUSE_TEST, align 8
  %17 = add nsw i64 %16, 3
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @r8712_write8(%struct._adapter* %15, i64 %17, i32 %18)
  %20 = call i32 @msleep(i32 20)
  %21 = load %struct._adapter*, %struct._adapter** %3, align 8
  %22 = load i64, i64* @EFUSE_CLK_CTRL, align 8
  %23 = call i32 @r8712_write8(%struct._adapter* %21, i64 %22, i32 3)
  %24 = call i32 @msleep(i32 20)
  br label %40

25:                                               ; preds = %2
  %26 = load %struct._adapter*, %struct._adapter** %3, align 8
  %27 = load i64, i64* @EFUSE_TEST, align 8
  %28 = add nsw i64 %27, 3
  %29 = call i32 @r8712_read8(%struct._adapter* %26, i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 127
  store i32 %31, i32* %5, align 4
  %32 = load %struct._adapter*, %struct._adapter** %3, align 8
  %33 = load i64, i64* @EFUSE_TEST, align 8
  %34 = add nsw i64 %33, 3
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @r8712_write8(%struct._adapter* %32, i64 %34, i32 %35)
  %37 = load %struct._adapter*, %struct._adapter** %3, align 8
  %38 = load i64, i64* @EFUSE_CLK_CTRL, align 8
  %39 = call i32 @r8712_write8(%struct._adapter* %37, i64 %38, i32 2)
  br label %40

40:                                               ; preds = %25, %8
  ret void
}

declare dso_local i32 @r8712_read8(%struct._adapter*, i64) #1

declare dso_local i32 @r8712_write8(%struct._adapter*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
