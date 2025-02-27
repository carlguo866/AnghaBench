; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_isr.c_fnic_isr_msi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_isr.c_fnic_isr_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@io_completions = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fnic_isr_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fnic_isr_msi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fnic*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.fnic*
  store %struct.fnic* %8, %struct.fnic** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* @jiffies, align 4
  %10 = load %struct.fnic*, %struct.fnic** %5, align 8
  %11 = getelementptr inbounds %struct.fnic, %struct.fnic* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %9, i32* %13, align 4
  %14 = load %struct.fnic*, %struct.fnic** %5, align 8
  %15 = getelementptr inbounds %struct.fnic, %struct.fnic* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @atomic64_inc(i32* %17)
  %19 = load %struct.fnic*, %struct.fnic** %5, align 8
  %20 = load i32, i32* @io_completions, align 4
  %21 = call i64 @fnic_wq_copy_cmpl_handler(%struct.fnic* %19, i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %6, align 8
  %24 = load %struct.fnic*, %struct.fnic** %5, align 8
  %25 = call i64 @fnic_wq_cmpl_handler(%struct.fnic* %24, i32 -1)
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %6, align 8
  %28 = load %struct.fnic*, %struct.fnic** %5, align 8
  %29 = call i64 @fnic_rq_cmpl_handler(%struct.fnic* %28, i32 -1)
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load %struct.fnic*, %struct.fnic** %5, align 8
  %33 = getelementptr inbounds %struct.fnic, %struct.fnic* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @vnic_intr_return_credits(i32* %35, i64 %36, i32 1, i32 1)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i64 @fnic_wq_copy_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i64 @fnic_wq_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i64 @fnic_rq_cmpl_handler(%struct.fnic*, i32) #1

declare dso_local i32 @vnic_intr_return_credits(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
