; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_msi_mode_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_msi.c_msi_mode_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.msi_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"msix\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @msi_mode_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_mode_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.msi_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %12 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kstrtoul(i32 %14, i32 10, i64* %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %38

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = call %struct.msi_desc* @irq_get_msi_desc(i64 %21)
  store %struct.msi_desc* %22, %struct.msi_desc** %8, align 8
  %23 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %24 = icmp ne %struct.msi_desc* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.msi_desc*, %struct.msi_desc** %8, align 8
  %28 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %20
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %25, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @kstrtoul(i32, i32, i64*) #1

declare dso_local %struct.msi_desc* @irq_get_msi_desc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
