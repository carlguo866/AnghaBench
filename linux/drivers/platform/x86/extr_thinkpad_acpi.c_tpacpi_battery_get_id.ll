; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_battery_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_battery_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"BAT0\00", align 1
@tp_features = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BAT_PRIMARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"BAT1\00", align 1
@BAT_SECONDARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"unknown battery %s, assuming primary\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tpacpi_battery_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpacpi_battery_get_id(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strcmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tp_features, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @BAT_PRIMARY, align 4
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %7
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @BAT_SECONDARY, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %12
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @BAT_PRIMARY, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %16, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
