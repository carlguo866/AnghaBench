; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_mif_readbits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_mif_readbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@MIFCSR = common dso_local global i32 0, align 4
@MIFDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bmac_mif_readbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmac_mif_readbits(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = load i32, i32* @MIFCSR, align 4
  %13 = call i32 @bmwrite(%struct.net_device* %11, i32 %12, i32 0)
  %14 = load i32, i32* @MIFDELAY, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = load i32, i32* @MIFCSR, align 4
  %17 = call i32 @bmread(%struct.net_device* %15, i32 %16)
  %18 = and i32 %17, 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %10
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = load i32, i32* @MIFCSR, align 4
  %28 = call i32 @bmwrite(%struct.net_device* %26, i32 %27, i32 1)
  %29 = load i32, i32* @MIFDELAY, align 4
  br label %6

30:                                               ; preds = %6
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load i32, i32* @MIFCSR, align 4
  %33 = call i32 @bmwrite(%struct.net_device* %31, i32 %32, i32 0)
  %34 = load i32, i32* @MIFDELAY, align 4
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load i32, i32* @MIFCSR, align 4
  %37 = call i32 @bmwrite(%struct.net_device* %35, i32 %36, i32 1)
  %38 = load i32, i32* @MIFDELAY, align 4
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @bmwrite(%struct.net_device*, i32, i32) #1

declare dso_local i32 @bmread(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
