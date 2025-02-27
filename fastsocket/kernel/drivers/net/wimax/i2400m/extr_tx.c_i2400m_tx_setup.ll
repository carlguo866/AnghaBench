; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_tx.c_i2400m_tx_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i64, i32*, i64, i32 }

@i2400m_wake_tx_work = common dso_local global i32 0, align 4
@I2400M_TX_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_tx_setup(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %4 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %5 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %4, i32 0, i32 3
  %6 = load i32, i32* @i2400m_wake_tx_work, align 4
  %7 = call i32 @INIT_WORK(i32* %5, i32 %6)
  %8 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %9 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @I2400M_TX_BUF_SIZE, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kmalloc(i32 %10, i32 %11)
  %13 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %14 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %16 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %25 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
