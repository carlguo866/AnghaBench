; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sunplus.c_sp_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sunplus.c_sp_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"fixing up Sunplus Wireless Desktop report descriptor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @sp_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sp_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = icmp uge i32 %8, 112
  br i1 %9, label %10, label %36

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 104
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 38
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 105
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 106
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %27 = call i32 @hid_info(%struct.hid_device* %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 110
  store i32 3, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 105
  store i32 3, i32* %31, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 111
  store i32 33, i32* %33, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 106
  store i32 33, i32* %35, align 4
  br label %36

36:                                               ; preds = %25, %20, %15, %10, %3
  %37 = load i32*, i32** %5, align 8
  ret i32* %37
}

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
