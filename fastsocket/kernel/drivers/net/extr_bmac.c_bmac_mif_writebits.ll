; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_mif_writebits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_mif_writebits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@MIFCSR = common dso_local global i32 0, align 4
@MIFDELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @bmac_mif_writebits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bmac_mif_writebits(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 6, i32 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load i32, i32* @MIFCSR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @bmwrite(%struct.net_device* %20, i32 %21, i32 %22)
  %24 = load i32, i32* @MIFDELAY, align 4
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i32, i32* @MIFCSR, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, 1
  %29 = call i32 @bmwrite(%struct.net_device* %25, i32 %26, i32 %28)
  %30 = load i32, i32* @MIFDELAY, align 4
  br label %8

31:                                               ; preds = %8
  ret void
}

declare dso_local i32 @bmwrite(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
