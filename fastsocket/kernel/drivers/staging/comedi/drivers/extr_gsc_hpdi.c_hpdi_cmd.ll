; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_hpdi_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_gsc_hpdi.c_hpdi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @hpdi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpdi_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %7 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %17 = call i32 @di_cmd(%struct.comedi_device* %15, %struct.comedi_subdevice* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @di_cmd(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
