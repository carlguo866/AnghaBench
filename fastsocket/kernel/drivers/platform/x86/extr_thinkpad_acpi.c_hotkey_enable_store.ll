; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_enable_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_thinkpad_acpi.c_hotkey_enable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"hotkey_enable\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Hotkeys can be disabled through hotkey_mask\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @hotkey_enable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hotkey_enable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call i32 @printk_deprecated_attribute(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i8*, i8** %8, align 8
  %13 = call i64 @parse_strtoul(i8* %12, i32 1, i64* %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %5, align 8
  br label %26

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* @EPERM, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %26

24:                                               ; preds = %18
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %24, %21, %15
  %27 = load i64, i64* %5, align 8
  ret i64 %27
}

declare dso_local i32 @printk_deprecated_attribute(i8*, i8*) #1

declare dso_local i64 @parse_strtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
