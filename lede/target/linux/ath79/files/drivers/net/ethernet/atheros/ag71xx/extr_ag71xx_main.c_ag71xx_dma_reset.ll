; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_dma_reset.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_dma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AG71XX_REG_RX_CTRL = common dso_local global i32 0, align 4
@AG71XX_REG_TX_CTRL = common dso_local global i32 0, align 4
@AG71XX_REG_TX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_RX_DESC = common dso_local global i32 0, align 4
@AG71XX_REG_RX_STATUS = common dso_local global i32 0, align 4
@RX_STATUS_PR = common dso_local global i32 0, align 4
@AG71XX_REG_TX_STATUS = common dso_local global i32 0, align 4
@TX_STATUS_PS = common dso_local global i32 0, align 4
@RX_STATUS_BE = common dso_local global i32 0, align 4
@RX_STATUS_OF = common dso_local global i32 0, align 4
@TX_STATUS_BE = common dso_local global i32 0, align 4
@TX_STATUS_UR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: unable to clear DMA Rx status: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: unable to clear DMA Tx status: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ag71xx_dma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ag71xx_dma_reset(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %6 = call i32 @ag71xx_dump_dma_regs(%struct.ag71xx* %5)
  %7 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %8 = load i32, i32* @AG71XX_REG_RX_CTRL, align 4
  %9 = call i32 @ag71xx_wr(%struct.ag71xx* %7, i32 %8, i32 0)
  %10 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %11 = load i32, i32* @AG71XX_REG_TX_CTRL, align 4
  %12 = call i32 @ag71xx_wr(%struct.ag71xx* %10, i32 %11, i32 0)
  %13 = call i32 @mdelay(i32 1)
  %14 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %15 = load i32, i32* @AG71XX_REG_TX_DESC, align 4
  %16 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %17 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ag71xx_wr(%struct.ag71xx* %14, i32 %15, i32 %18)
  %20 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %21 = load i32, i32* @AG71XX_REG_RX_DESC, align 4
  %22 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %23 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ag71xx_wr(%struct.ag71xx* %20, i32 %21, i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %38, %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %31 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %32 = load i32, i32* @RX_STATUS_PR, align 4
  %33 = call i32 @ag71xx_wr(%struct.ag71xx* %30, i32 %31, i32 %32)
  %34 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %35 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %36 = load i32, i32* @TX_STATUS_PS, align 4
  %37 = call i32 @ag71xx_wr(%struct.ag71xx* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %26

41:                                               ; preds = %26
  %42 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %43 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %44 = load i32, i32* @RX_STATUS_BE, align 4
  %45 = load i32, i32* @RX_STATUS_OF, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ag71xx_wr(%struct.ag71xx* %42, i32 %43, i32 %46)
  %48 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %49 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %50 = load i32, i32* @TX_STATUS_BE, align 4
  %51 = load i32, i32* @TX_STATUS_UR, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @ag71xx_wr(%struct.ag71xx* %48, i32 %49, i32 %52)
  %54 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %55 = load i32, i32* @AG71XX_REG_RX_STATUS, align 4
  %56 = call i32 @ag71xx_rr(%struct.ag71xx* %54, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %41
  %60 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %61 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @pr_alert(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59, %41
  %68 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %69 = load i32, i32* @AG71XX_REG_TX_STATUS, align 4
  %70 = call i32 @ag71xx_rr(%struct.ag71xx* %68, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, 16777215
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %67
  %76 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %77 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @pr_alert(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %67
  %84 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %85 = call i32 @ag71xx_dump_dma_regs(%struct.ag71xx* %84)
  ret void
}

declare dso_local i32 @ag71xx_dump_dma_regs(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ag71xx_rr(%struct.ag71xx*, i32) #1

declare dso_local i32 @pr_alert(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
