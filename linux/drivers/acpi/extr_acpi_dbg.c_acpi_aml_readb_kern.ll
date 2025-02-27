; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_readb_kern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_dbg.c_acpi_aml_readb_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.circ_buf }
%struct.circ_buf = type { i8*, i64 }

@acpi_aml_io = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ACPI_AML_IN_KERN = common dso_local global i32 0, align 4
@ACPI_AML_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @acpi_aml_readb_kern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_aml_readb_kern() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca i8*, align 8
  store %struct.circ_buf* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_aml_io, i32 0, i32 0), %struct.circ_buf** %3, align 8
  %5 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %6 = load i32, i32* @ACPI_AML_IN_KERN, align 4
  %7 = call i32 @acpi_aml_lock_read(%struct.circ_buf* %5, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* %1, align 4
  br label %38

12:                                               ; preds = %0
  %13 = call i32 (...) @smp_rmb()
  %14 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %15 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %18 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %2, align 4
  %24 = call i32 (...) @smp_mb()
  %25 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %26 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  %29 = load i32, i32* @ACPI_AML_BUF_SIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = and i64 %28, %31
  %33 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %34 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @ACPI_AML_IN_KERN, align 4
  %36 = call i32 @acpi_aml_unlock_fifo(i32 %35, i32 1)
  %37 = load i32, i32* %2, align 4
  store i32 %37, i32* %1, align 4
  br label %38

38:                                               ; preds = %12, %10
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @acpi_aml_lock_read(%struct.circ_buf*, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @acpi_aml_unlock_fifo(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
