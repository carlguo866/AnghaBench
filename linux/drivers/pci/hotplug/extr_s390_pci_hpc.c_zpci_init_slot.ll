; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_s390_pci_hpc.c_zpci_init_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_s390_pci_hpc.c_zpci_init_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32, i32 }
%struct.slot = type { i32, %struct.TYPE_2__, %struct.zpci_dev* }
%struct.TYPE_2__ = type { i32* }

@SLOT_NAME_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@s390_hotplug_slot_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@ZPCI_DEVFN = common dso_local global i32 0, align 4
@s390_hotplug_slot_list = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpci_init_slot(%struct.zpci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %3, align 8
  %9 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %14 = icmp ne %struct.zpci_dev* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %54

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.slot* @kzalloc(i32 24, i32 %17)
  store %struct.slot* %18, %struct.slot** %6, align 8
  %19 = load %struct.slot*, %struct.slot** %6, align 8
  %20 = icmp ne %struct.slot* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %51

22:                                               ; preds = %16
  %23 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %24 = load %struct.slot*, %struct.slot** %6, align 8
  %25 = getelementptr inbounds %struct.slot, %struct.slot* %24, i32 0, i32 2
  store %struct.zpci_dev* %23, %struct.zpci_dev** %25, align 8
  %26 = load %struct.slot*, %struct.slot** %6, align 8
  %27 = getelementptr inbounds %struct.slot, %struct.slot* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32* @s390_hotplug_slot_ops, i32** %28, align 8
  %29 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %30 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %31 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @snprintf(i8* %12, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.slot*, %struct.slot** %6, align 8
  %35 = getelementptr inbounds %struct.slot, %struct.slot* %34, i32 0, i32 1
  %36 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ZPCI_DEVFN, align 4
  %40 = call i32 @pci_hp_register(%struct.TYPE_2__* %35, i32 %38, i32 %39, i8* %12)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %22
  br label %48

44:                                               ; preds = %22
  %45 = load %struct.slot*, %struct.slot** %6, align 8
  %46 = getelementptr inbounds %struct.slot, %struct.slot* %45, i32 0, i32 0
  %47 = call i32 @list_add(i32* %46, i32* @s390_hotplug_slot_list)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %54

48:                                               ; preds = %43
  %49 = load %struct.slot*, %struct.slot** %6, align 8
  %50 = call i32 @kfree(%struct.slot* %49)
  br label %51

51:                                               ; preds = %48, %21
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %44, %15
  %55 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.slot* @kzalloc(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @pci_hp_register(%struct.TYPE_2__*, i32, i32, i8*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @kfree(%struct.slot*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
