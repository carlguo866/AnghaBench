; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.dt282x_private* }
%struct.dt282x_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DT2821_DACSR_LBOE = common dso_local global i32 0, align 4
@DT2821_DACSR_HBOE = common dso_local global i32 0, align 4
@DT2821_DACSR_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt282x_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt282x_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dt282x_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 1
  %16 = load %struct.dt282x_private*, %struct.dt282x_private** %15, align 8
  store %struct.dt282x_private* %16, %struct.dt282x_private** %10, align 8
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CR_CHAN(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ult i32 %21, 8
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 255, i32* %12, align 4
  br label %25

24:                                               ; preds = %4
  store i32 65280, i32* %12, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %28 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @comedi_dio_insn_config(%struct.comedi_device* %26, %struct.comedi_subdevice* %27, %struct.comedi_insn* %28, i32* %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %5, align 4
  br label %81

36:                                               ; preds = %25
  %37 = load i32, i32* @DT2821_DACSR_LBOE, align 4
  %38 = load i32, i32* @DT2821_DACSR_HBOE, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.dt282x_private*, %struct.dt282x_private** %10, align 8
  %42 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 255
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load i32, i32* @DT2821_DACSR_LBOE, align 4
  %52 = load %struct.dt282x_private*, %struct.dt282x_private** %10, align 8
  %53 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %36
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 65280
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32, i32* @DT2821_DACSR_HBOE, align 4
  %64 = load %struct.dt282x_private*, %struct.dt282x_private** %10, align 8
  %65 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %56
  %69 = load %struct.dt282x_private*, %struct.dt282x_private** %10, align 8
  %70 = getelementptr inbounds %struct.dt282x_private, %struct.dt282x_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DT2821_DACSR_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outw(i32 %71, i64 %76)
  %78 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %79 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %68, %34
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_dio_insn_config(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
