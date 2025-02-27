; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_i2s_disable_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_i2s_disable_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2s_dev = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2s_dev*, i64)* @i2s_disable_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2s_disable_channels(%struct.dw_i2s_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.dw_i2s_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.dw_i2s_dev* %0, %struct.dw_i2s_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %20, %9
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %11, 4
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %15 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @TER(i64 %17)
  %19 = call i32 @i2s_write_reg(i32 %16, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %5, align 8
  br label %10

23:                                               ; preds = %10
  br label %39

24:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %25

25:                                               ; preds = %35, %24
  %26 = load i64, i64* %5, align 8
  %27 = icmp slt i64 %26, 4
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %3, align 8
  %30 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @RER(i64 %32)
  %34 = call i32 @i2s_write_reg(i32 %31, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %25

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %23
  ret void
}

declare dso_local i32 @i2s_write_reg(i32, i32, i32) #1

declare dso_local i32 @TER(i64) #1

declare dso_local i32 @RER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
