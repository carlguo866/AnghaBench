; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoeblk.c_aoedisk_show_fwver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoeblk.c_aoedisk_show_fwver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gendisk = type { %struct.aoedev* }
%struct.aoedev = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @aoedisk_show_fwver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoedisk_show_fwver(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.aoedev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.gendisk* @dev_to_disk(%struct.device* %9)
  store %struct.gendisk* %10, %struct.gendisk** %7, align 8
  %11 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i32 0, i32 0
  %13 = load %struct.aoedev*, %struct.aoedev** %12, align 8
  store %struct.aoedev* %13, %struct.aoedev** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load %struct.aoedev*, %struct.aoedev** %8, align 8
  %17 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %19)
  ret i32 %20
}

declare dso_local %struct.gendisk* @dev_to_disk(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
