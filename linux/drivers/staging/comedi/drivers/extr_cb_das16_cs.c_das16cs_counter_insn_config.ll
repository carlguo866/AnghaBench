; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_das16cs_counter_insn_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_das16cs_counter_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.das16cs_private* }
%struct.das16cs_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@DAS16CS_MISC2_CTR1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DAS16CS_MISC2_REG = common dso_local global i64 0, align 8
@I8254_OSC_BASE_100KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das16cs_counter_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16cs_counter_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.das16cs_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.das16cs_private*, %struct.das16cs_private** %12, align 8
  store %struct.das16cs_private* %13, %struct.das16cs_private** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %66 [
    i32 128, label %17
    i32 129, label %47
  ]

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %34 [
    i32 0, label %21
    i32 1, label %27
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @DAS16CS_MISC2_CTR1, align 4
  %23 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %24 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %37

27:                                               ; preds = %17
  %28 = load i32, i32* @DAS16CS_MISC2_CTR1, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %31 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %37

34:                                               ; preds = %17
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %73

37:                                               ; preds = %27, %21
  %38 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %39 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %42 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DAS16CS_MISC2_REG, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outw(i32 %40, i64 %45)
  br label %69

47:                                               ; preds = %4
  %48 = load %struct.das16cs_private*, %struct.das16cs_private** %10, align 8
  %49 = getelementptr inbounds %struct.das16cs_private, %struct.das16cs_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DAS16CS_MISC2_CTR1, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* @I8254_OSC_BASE_100KHZ, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %57, i32* %59, align 4
  br label %65

60:                                               ; preds = %47
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 1, i32* %62, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %54
  br label %69

66:                                               ; preds = %4
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %73

69:                                               ; preds = %65, %37
  %70 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %71 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %66, %34
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
