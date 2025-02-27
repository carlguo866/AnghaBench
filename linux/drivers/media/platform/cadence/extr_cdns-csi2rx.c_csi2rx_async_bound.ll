; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2rx.c_csi2rx_async_bound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2rx.c_csi2rx_async_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_async_notifier = type { %struct.v4l2_subdev* }
%struct.v4l2_subdev = type { i32, i32, i32 }
%struct.v4l2_async_subdev = type { i32 }
%struct.csi2rx_priv = type { i64, %struct.TYPE_2__, %struct.v4l2_subdev*, i32 }
%struct.TYPE_2__ = type { i32 }

@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Couldn't find output pad for subdev %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Bound %s pad: %d\0A\00", align 1
@MEDIA_LNK_FL_ENABLED = common dso_local global i32 0, align 4
@MEDIA_LNK_FL_IMMUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_async_notifier*, %struct.v4l2_subdev*, %struct.v4l2_async_subdev*)* @csi2rx_async_bound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2rx_async_bound(%struct.v4l2_async_notifier* %0, %struct.v4l2_subdev* %1, %struct.v4l2_async_subdev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_async_notifier*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca %struct.v4l2_async_subdev*, align 8
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.csi2rx_priv*, align 8
  store %struct.v4l2_async_notifier* %0, %struct.v4l2_async_notifier** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store %struct.v4l2_async_subdev* %2, %struct.v4l2_async_subdev** %7, align 8
  %10 = load %struct.v4l2_async_notifier*, %struct.v4l2_async_notifier** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_async_notifier, %struct.v4l2_async_notifier* %10, i32 0, i32 0
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %11, align 8
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %8, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %14 = call %struct.csi2rx_priv* @v4l2_subdev_to_csi2rx(%struct.v4l2_subdev* %13)
  store %struct.csi2rx_priv* %14, %struct.csi2rx_priv** %9, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %15, i32 0, i32 0
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %21 = call i64 @media_entity_get_fwnode_pad(i32* %16, i32 %19, i32 %20)
  %22 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %9, align 8
  %23 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %9, align 8
  %25 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %9, align 8
  %30 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %9, align 8
  %37 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %70

40:                                               ; preds = %3
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %42 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %9, align 8
  %43 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %42, i32 0, i32 2
  store %struct.v4l2_subdev* %41, %struct.v4l2_subdev** %43, align 8
  %44 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %9, align 8
  %45 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %9, align 8
  %51 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %9, align 8
  %56 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %55, i32 0, i32 2
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %56, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %57, i32 0, i32 0
  %59 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %9, align 8
  %60 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.csi2rx_priv*, %struct.csi2rx_priv** %9, align 8
  %64 = getelementptr inbounds %struct.csi2rx_priv, %struct.csi2rx_priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* @MEDIA_LNK_FL_ENABLED, align 4
  %67 = load i32, i32* @MEDIA_LNK_FL_IMMUTABLE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @media_create_pad_link(i32* %58, i32 %62, i32* %65, i32 0, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %40, %28
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.csi2rx_priv* @v4l2_subdev_to_csi2rx(%struct.v4l2_subdev*) #1

declare dso_local i64 @media_entity_get_fwnode_pad(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @media_create_pad_link(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
