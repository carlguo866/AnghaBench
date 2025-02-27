; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_bios_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_eata2x_bios_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.block_device = type { i32 }

@ext_tran = common dso_local global i64 0, align 8
@driver_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eata2x_bios_param(%struct.scsi_device* %0, %struct.block_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %7, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i64, i64* @ext_tran, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load %struct.block_device*, %struct.block_device** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @scsicam_bios_param(%struct.block_device* %14, i32 %15, i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %13, %4
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 255, i32* %21, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 63, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = udiv i32 %24, %31
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %19, %13
  ret i32 0
}

declare dso_local i64 @scsicam_bios_param(%struct.block_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
