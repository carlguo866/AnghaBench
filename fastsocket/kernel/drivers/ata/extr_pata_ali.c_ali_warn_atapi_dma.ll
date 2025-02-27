; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_ali.c_ali_warn_atapi_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_ali.c_ali_warn_atapi_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_eh_context }
%struct.ata_eh_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATA_EHI_PRINTINFO = common dso_local global i32 0, align 4
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@ali_atapi_dma = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"WARNING: ATAPI DMA disabled for reliability issues.  It can be enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"WARNING: via pata_ali.atapi_dma modparam or corresponding sysfs node.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_device*)* @ali_warn_atapi_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_warn_atapi_dma(%struct.ata_device* %0) #0 {
  %2 = alloca %struct.ata_device*, align 8
  %3 = alloca %struct.ata_eh_context*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %2, align 8
  %5 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %6 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store %struct.ata_eh_context* %8, %struct.ata_eh_context** %3, align 8
  %9 = load %struct.ata_eh_context*, %struct.ata_eh_context** %3, align 8
  %10 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATA_EHI_PRINTINFO, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load i32, i32* @ali_atapi_dma, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %28 = load i32, i32* @KERN_WARNING, align 4
  %29 = call i32 @ata_dev_printk(%struct.ata_device* %27, i32 %28, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.ata_device*, %struct.ata_device** %2, align 8
  %31 = load i32, i32* @KERN_WARNING, align 4
  %32 = call i32 @ata_dev_printk(%struct.ata_device* %30, i32 %31, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %26, %23, %17, %1
  ret void
}

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
