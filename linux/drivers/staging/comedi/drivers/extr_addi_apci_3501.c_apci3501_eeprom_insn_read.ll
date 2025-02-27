; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3501.c_apci3501_eeprom_insn_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3501.c_apci3501_eeprom_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.apci3501_private* }
%struct.apci3501_private = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @apci3501_eeprom_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apci3501_eeprom_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.apci3501_private*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load %struct.apci3501_private*, %struct.apci3501_private** %14, align 8
  store %struct.apci3501_private* %15, %struct.apci3501_private** %9, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call zeroext i16 @CR_CHAN(i32 %18)
  store i16 %19, i16* %10, align 2
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %4
  %25 = load %struct.apci3501_private*, %struct.apci3501_private** %9, align 8
  %26 = getelementptr inbounds %struct.apci3501_private, %struct.apci3501_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i16, i16* %10, align 2
  %29 = zext i16 %28 to i32
  %30 = mul nsw i32 2, %29
  %31 = call i32 @apci3501_eeprom_readw(i32 %27, i32 %30)
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %44, %24
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %12, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %32

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %4
  %49 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  ret i32 %51
}

declare dso_local zeroext i16 @CR_CHAN(i32) #1

declare dso_local i32 @apci3501_eeprom_readw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
