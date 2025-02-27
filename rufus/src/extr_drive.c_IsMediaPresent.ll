; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_IsMediaPresent.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_IsMediaPresent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IOCTL_DISK_GET_DRIVE_GEOMETRY_EX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsMediaPresent(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [128 x i32], align 16
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i32, i32* @FALSE, align 4
  %9 = load i32, i32* @FALSE, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @GetPhysicalHandle(i64 %7, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IOCTL_DISK_GET_DRIVE_GEOMETRY_EX, align 4
  %14 = getelementptr inbounds [128 x i32], [128 x i32]* %6, i64 0, i64 0
  %15 = call i64 @DeviceIoControl(i32 %12, i32 %13, i32* null, i32 0, i32* %14, i32 512, i64* %5, i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i64, i64* %5, align 8
  %19 = icmp sgt i64 %18, 0
  br label %20

20:                                               ; preds = %17, %1
  %21 = phi i1 [ false, %1 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @safe_closehandle(i32 %23)
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @GetPhysicalHandle(i64, i32, i32, i32) #1

declare dso_local i64 @DeviceIoControl(i32, i32, i32*, i32, i32*, i32, i64*, i32*) #1

declare dso_local i32 @safe_closehandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
