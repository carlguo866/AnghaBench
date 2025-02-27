; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_unioxx5.c_unioxx5_subdev_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_unioxx5.c_unioxx5_subdev_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.unioxx5_subd_priv* }
%struct.unioxx5_subd_priv = type { i32* }
%struct.comedi_insn = type { i32 }

@MODULE_DIGITAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @unioxx5_subdev_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unioxx5_subdev_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.unioxx5_subd_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.unioxx5_subd_priv*, %struct.unioxx5_subd_priv** %14, align 8
  store %struct.unioxx5_subd_priv* %15, %struct.unioxx5_subd_priv** %10, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.unioxx5_subd_priv*, %struct.unioxx5_subd_priv** %10, align 8
  %21 = getelementptr inbounds %struct.unioxx5_subd_priv, %struct.unioxx5_subd_priv* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sdiv i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @MODULE_DIGITAL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %4
  %32 = load %struct.unioxx5_subd_priv*, %struct.unioxx5_subd_priv** %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__unioxx5_digital_write(%struct.unioxx5_subd_priv* %32, i32* %33, i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %54

41:                                               ; preds = %31
  br label %53

42:                                               ; preds = %4
  %43 = load %struct.unioxx5_subd_priv*, %struct.unioxx5_subd_priv** %10, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__unioxx5_analog_write(%struct.unioxx5_subd_priv* %43, i32* %44, i32 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  br label %54

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %41
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %51, %40
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @__unioxx5_digital_write(%struct.unioxx5_subd_priv*, i32*, i32, i32) #1

declare dso_local i32 @__unioxx5_analog_write(%struct.unioxx5_subd_priv*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
