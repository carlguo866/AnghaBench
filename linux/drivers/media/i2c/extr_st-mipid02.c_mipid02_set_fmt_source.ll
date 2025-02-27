; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_set_fmt_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_set_fmt_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mipid02_dev = type { %struct.TYPE_2__ }

@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @mipid02_set_fmt_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipid02_set_fmt_source(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %6 = alloca %struct.v4l2_subdev_format*, align 8
  %7 = alloca %struct.mipid02_dev*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %5, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %6, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.mipid02_dev* @to_mipid02_dev(%struct.v4l2_subdev* %8)
  store %struct.mipid02_dev* %9, %struct.mipid02_dev** %7, align 8
  %10 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 1
  %12 = load %struct.mipid02_dev*, %struct.mipid02_dev** %7, align 8
  %13 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %12, i32 0, i32 0
  %14 = bitcast %struct.TYPE_2__* %11 to i8*
  %15 = bitcast %struct.TYPE_2__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @serial_to_parallel_code(i32 %19)
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_SUBDEV_FORMAT_TRY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %41

30:                                               ; preds = %3
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %32 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %5, align 8
  %33 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_2__* @v4l2_subdev_get_try_format(%struct.v4l2_subdev* %31, %struct.v4l2_subdev_pad_config* %32, i32 %35)
  %37 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %37, i32 0, i32 1
  %39 = bitcast %struct.TYPE_2__* %36 to i8*
  %40 = bitcast %struct.TYPE_2__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 8 %40, i64 4, i1 false)
  br label %41

41:                                               ; preds = %30, %29
  ret void
}

declare dso_local %struct.mipid02_dev* @to_mipid02_dev(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @serial_to_parallel_code(i32) #1

declare dso_local %struct.TYPE_2__* @v4l2_subdev_get_try_format(%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
