; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_panel_notify_sys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_panel_notify_sys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32 }
%struct.notifier_block = type { i32 }

@the_charlcd = common dso_local global %struct.charlcd* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"\0CReloading\0ASystem...\1B[Lc\1B[Lb\1B[L+\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\0CSystem Halted.\1B[Lc\1B[Lb\1B[L+\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\0CPower off.\1B[Lc\1B[Lb\1B[L+\00", align 1
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @panel_notify_sys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_notify_sys(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.charlcd*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.charlcd*, %struct.charlcd** @the_charlcd, align 8
  store %struct.charlcd* %8, %struct.charlcd** %7, align 8
  %9 = load i64, i64* %5, align 8
  switch i64 %9, label %19 [
    i64 130, label %10
    i64 129, label %13
    i64 128, label %16
  ]

10:                                               ; preds = %3
  %11 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %12 = call i32 @charlcd_puts(%struct.charlcd* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %20

13:                                               ; preds = %3
  %14 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %15 = call i32 @charlcd_puts(%struct.charlcd* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.charlcd*, %struct.charlcd** %7, align 8
  %18 = call i32 @charlcd_puts(%struct.charlcd* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %16, %13, %10
  %21 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %21
}

declare dso_local i32 @charlcd_puts(%struct.charlcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
