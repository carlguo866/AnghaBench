; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_set_pad_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/cadence/extr_cdns-csi2tx.c_csi2tx_set_pad_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.v4l2_mbus_framefmt }

@CSI2TX_PAD_SOURCE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@fmt_default = common dso_local global %struct.v4l2_mbus_framefmt zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @csi2tx_set_pad_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2tx_set_pad_format(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %10 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 1
  store %struct.v4l2_mbus_framefmt* %11, %struct.v4l2_mbus_framefmt** %8, align 8
  %12 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CSI2TX_PAD_SOURCE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @csi2tx_get_fmt_from_mbus(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store %struct.v4l2_mbus_framefmt* @fmt_default, %struct.v4l2_mbus_framefmt** %8, align 8
  br label %28

28:                                               ; preds = %27, %20
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %30 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %31 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %32 = call %struct.v4l2_mbus_framefmt* @__csi2tx_get_pad_format(%struct.v4l2_subdev* %29, %struct.v4l2_subdev_pad_config* %30, %struct.v4l2_subdev_format* %31)
  store %struct.v4l2_mbus_framefmt* %32, %struct.v4l2_mbus_framefmt** %9, align 8
  %33 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %34 = icmp ne %struct.v4l2_mbus_framefmt* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %41 = bitcast %struct.v4l2_mbus_framefmt* %39 to i8*
  %42 = bitcast %struct.v4l2_mbus_framefmt* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %38, %35, %17
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @csi2tx_get_fmt_from_mbus(i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__csi2tx_get_pad_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
