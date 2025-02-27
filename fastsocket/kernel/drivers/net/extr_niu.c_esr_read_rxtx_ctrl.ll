; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_esr_read_rxtx_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_esr_read_rxtx_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@NIU_ESR_DEV_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i64, i32*)* @esr_read_rxtx_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esr_read_rxtx_ctrl(%struct.niu* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.niu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.niu*, %struct.niu** %4, align 8
  %9 = load %struct.niu*, %struct.niu** %4, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NIU_ESR_DEV_ADDR, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @ESR_RXTX_CTRL_L(i64 %13)
  %15 = call i32 @mdio_read(%struct.niu* %8, i32 %11, i32 %12, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 65535
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.niu*, %struct.niu** %4, align 8
  %23 = load %struct.niu*, %struct.niu** %4, align 8
  %24 = getelementptr inbounds %struct.niu, %struct.niu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NIU_ESR_DEV_ADDR, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ESR_RXTX_CTRL_H(i64 %27)
  %29 = call i32 @mdio_read(%struct.niu* %22, i32 %25, i32 %26, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 65535
  %35 = shl i32 %34, 16
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %18
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @mdio_read(%struct.niu*, i32, i32, i32) #1

declare dso_local i32 @ESR_RXTX_CTRL_L(i64) #1

declare dso_local i32 @ESR_RXTX_CTRL_H(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
