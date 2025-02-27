; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_abort.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/52xx/extr_mpc52xx_lpbfifo.c_mpc52xx_lpbfifo_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.mpc52xx_lpbfifo_request*, i64, i32, i32 }
%struct.mpc52xx_lpbfifo_request = type { i32 }

@lpbfifo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LPBFIFO_REG_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc52xx_lpbfifo_abort(%struct.mpc52xx_lpbfifo_request* %0) #0 {
  %2 = alloca %struct.mpc52xx_lpbfifo_request*, align 8
  %3 = alloca i64, align 8
  store %struct.mpc52xx_lpbfifo_request* %0, %struct.mpc52xx_lpbfifo_request** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %4)
  %6 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 1), align 8
  %7 = load %struct.mpc52xx_lpbfifo_request*, %struct.mpc52xx_lpbfifo_request** %2, align 8
  %8 = icmp eq %struct.mpc52xx_lpbfifo_request* %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 4), align 4
  %11 = call i32 @bcom_gen_bd_rx_reset(i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 3), align 8
  %13 = call i32 @bcom_gen_bd_tx_reset(i32 %12)
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 2), align 8
  %15 = load i64, i64* @LPBFIFO_REG_ENABLE, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @out_be32(i64 %16, i32 16842752)
  store %struct.mpc52xx_lpbfifo_request* null, %struct.mpc52xx_lpbfifo_request** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 1), align 8
  br label %18

18:                                               ; preds = %9, %1
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lpbfifo, i32 0, i32 0), i64 %19)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bcom_gen_bd_rx_reset(i32) #1

declare dso_local i32 @bcom_gen_bd_tx_reset(i32) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
