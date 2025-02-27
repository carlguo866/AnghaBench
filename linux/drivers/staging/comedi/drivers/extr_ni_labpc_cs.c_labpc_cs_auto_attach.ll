; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_cs.c_labpc_cs_auto_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_cs.c_labpc_cs_auto_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32* }
%struct.pcmcia_device = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@labpc_cs_boards = common dso_local global i32* null, align 8
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_ENABLE_PULSE_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i64)* @labpc_cs_auto_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @labpc_cs_auto_attach(%struct.comedi_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = call %struct.pcmcia_device* @comedi_to_pcmcia_dev(%struct.comedi_device* %8)
  store %struct.pcmcia_device* %9, %struct.pcmcia_device** %6, align 8
  %10 = load i32*, i32** @labpc_cs_boards, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %15 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CONF_ENABLE_PULSE_IRQ, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %20 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %24 = call i32 @comedi_pcmcia_enable(%struct.comedi_device* %23, i32* null)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %40 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %53

46:                                               ; preds = %29
  %47 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IRQF_SHARED, align 4
  %52 = call i32 @labpc_common_attach(%struct.comedi_device* %47, i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %46, %43, %27
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.pcmcia_device* @comedi_to_pcmcia_dev(%struct.comedi_device*) #1

declare dso_local i32 @comedi_pcmcia_enable(%struct.comedi_device*, i32*) #1

declare dso_local i32 @labpc_common_attach(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
