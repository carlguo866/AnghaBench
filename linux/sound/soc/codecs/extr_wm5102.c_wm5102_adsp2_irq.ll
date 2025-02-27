; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_adsp2_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5102.c_wm5102_adsp2_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm5102_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.arizona* }
%struct.arizona = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Spurious compressed data IRQ\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wm5102_adsp2_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5102_adsp2_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wm5102_priv*, align 8
  %7 = alloca %struct.arizona*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.wm5102_priv*
  store %struct.wm5102_priv* %10, %struct.wm5102_priv** %6, align 8
  %11 = load %struct.wm5102_priv*, %struct.wm5102_priv** %6, align 8
  %12 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.arizona*, %struct.arizona** %13, align 8
  store %struct.arizona* %14, %struct.arizona** %7, align 8
  %15 = load %struct.wm5102_priv*, %struct.wm5102_priv** %6, align 8
  %16 = getelementptr inbounds %struct.wm5102_priv, %struct.wm5102_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = call i32 @wm_adsp_compr_handle_irq(i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.arizona*, %struct.arizona** %7, align 8
  %27 = getelementptr inbounds %struct.arizona, %struct.arizona* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @wm_adsp_compr_handle_irq(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
