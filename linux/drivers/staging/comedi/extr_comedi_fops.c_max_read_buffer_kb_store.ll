; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_max_read_buffer_kb_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_max_read_buffer_kb_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @max_read_buffer_kb_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_read_buffer_kb_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.comedi_device*, align 8
  %12 = alloca %struct.comedi_subdevice*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MINOR(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtouint(i8* %19, i32 10, i32* %13)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %5, align 4
  br label %89

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @UINT_MAX, align 4
  %28 = sdiv i32 %27, 1024
  %29 = icmp ugt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %89

33:                                               ; preds = %25
  %34 = load i32, i32* %13, align 4
  %35 = mul i32 %34, 1024
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call %struct.comedi_device* @comedi_dev_get_from_minor(i32 %36)
  store %struct.comedi_device* %37, %struct.comedi_device** %11, align 8
  %38 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %39 = icmp ne %struct.comedi_device* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %89

43:                                               ; preds = %33
  %44 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call %struct.comedi_subdevice* @comedi_read_subdevice(%struct.comedi_device* %47, i32 %48)
  store %struct.comedi_subdevice* %49, %struct.comedi_subdevice** %12, align 8
  %50 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %51 = icmp ne %struct.comedi_subdevice* %50, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %43
  %53 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %54 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SDF_CMD_READ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = icmp ne %struct.TYPE_2__* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  br label %73

70:                                               ; preds = %59, %52, %43
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %70, %64
  %74 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.comedi_device*, %struct.comedi_device** %11, align 8
  %78 = call i32 @comedi_dev_put(%struct.comedi_device* %77)
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %73
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  br label %86

84:                                               ; preds = %73
  %85 = load i64, i64* %9, align 8
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i64 [ %83, %81 ], [ %85, %84 ]
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %40, %30, %23
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local %struct.comedi_device* @comedi_dev_get_from_minor(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.comedi_subdevice* @comedi_read_subdevice(%struct.comedi_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @comedi_dev_put(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
