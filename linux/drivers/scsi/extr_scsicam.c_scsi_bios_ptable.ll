; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsicam.c_scsi_bios_ptable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsicam.c_scsi_bios_ptable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.block_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scsi_bios_ptable(%struct.block_device* %0) #0 {
  %2 = alloca %struct.block_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.block_device* %0, %struct.block_device** %2, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kmalloc(i32 66, i32 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.block_device*, %struct.block_device** %2, align 8
  %13 = getelementptr inbounds %struct.block_device, %struct.block_device* %12, i32 0, i32 0
  %14 = load %struct.block_device*, %struct.block_device** %13, align 8
  store %struct.block_device* %14, %struct.block_device** %4, align 8
  %15 = load %struct.block_device*, %struct.block_device** %4, align 8
  %16 = call i8* @read_dev_sector(%struct.block_device* %15, i32 0, i32* %5)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr i8, i8* %21, i64 446
  %23 = call i32 @memcpy(i8* %20, i8* %22, i32 66)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @put_dev_sector(i32 %24)
  br label %29

26:                                               ; preds = %11
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @kfree(i8* %27)
  store i8* null, i8** %3, align 8
  br label %29

29:                                               ; preds = %26, %19
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @read_dev_sector(%struct.block_device*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @put_dev_sector(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
