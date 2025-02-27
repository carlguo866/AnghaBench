; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_lpaif_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/extr_lpass-platform.c_lpass_platform_lpaif_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpass_data = type { i64*, i32, %struct.lpass_variant* }
%struct.lpass_variant = type { i32 }

@LPAIF_IRQ_PORT_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"error reading from irqstat reg: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@LPASS_MAX_DMA_CHANNELS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lpass_platform_lpaif_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpass_platform_lpaif_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lpass_data*, align 8
  %7 = alloca %struct.lpass_variant*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.lpass_data*
  store %struct.lpass_data* %12, %struct.lpass_data** %6, align 8
  %13 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %14 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %13, i32 0, i32 2
  %15 = load %struct.lpass_variant*, %struct.lpass_variant** %14, align 8
  store %struct.lpass_variant* %15, %struct.lpass_variant** %7, align 8
  %16 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %17 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.lpass_variant*, %struct.lpass_variant** %7, align 8
  %20 = load i32, i32* @LPAIF_IRQ_PORT_HOST, align 4
  %21 = call i32 @LPAIF_IRQSTAT_REG(%struct.lpass_variant* %19, i32 %20)
  %22 = call i32 @regmap_read(i32 %18, i32 %21, i32* %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %73

29:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %68, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @LPASS_MAX_DMA_CHANNELS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @LPAIF_IRQ_ALL(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %42 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %40
  %50 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %51 = getelementptr inbounds %struct.lpass_data, %struct.lpass_data* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.lpass_data*, %struct.lpass_data** %6, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @lpass_dma_interrupt_handler(i64 %56, %struct.lpass_data* %57, i32 %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %73

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66, %40, %34
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %30

71:                                               ; preds = %30
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %64, %25
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @LPAIF_IRQSTAT_REG(%struct.lpass_variant*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @LPAIF_IRQ_ALL(i32) #1

declare dso_local i32 @lpass_dma_interrupt_handler(i64, %struct.lpass_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
