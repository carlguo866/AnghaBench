; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_aio_aio12_8.c_aio_aio12_8_ao_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_aio_aio12_8.c_aio_aio12_8_ao_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @aio_aio12_8_ao_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_aio12_8_ao_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @CR_CHAN(i32 %16)
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %32, %4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  ret i32 %38
}

declare dso_local i64 @CR_CHAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
