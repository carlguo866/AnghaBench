; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_m_series_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_m_series_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_board_struct* }
%struct.ni_board_struct = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS = common dso_local global i32 0, align 4
@NI_M_DIO_DIR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ni_m_series_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_m_series_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ni_board_struct*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load %struct.ni_board_struct*, %struct.ni_board_struct** %19, align 8
  store %struct.ni_board_struct* %20, %struct.ni_board_struct** %11, align 8
  %21 = load %struct.ni_board_struct*, %struct.ni_board_struct** %11, align 8
  %22 = getelementptr inbounds %struct.ni_board_struct, %struct.ni_board_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 0, i32* %27, align 4
  store i32 0, i32* %5, align 4
  br label %48

28:                                               ; preds = %4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %31 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @comedi_dio_insn_config(%struct.comedi_device* %29, %struct.comedi_subdevice* %30, %struct.comedi_insn* %31, i32* %32, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %48

38:                                               ; preds = %28
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NI_M_DIO_DIR_REG, align 4
  %44 = call i32 @ni_writel(%struct.comedi_device* %39, i32 %42, i32 %43)
  %45 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %46 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %38, %36, %17
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
