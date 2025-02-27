; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_drivers.c_setup_bus_id.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_drivers.c_setup_bus_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parisc_device = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.hardware_path = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%u:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parisc_device*)* @setup_bus_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_bus_id(%struct.parisc_device* %0) #0 {
  %2 = alloca %struct.parisc_device*, align 8
  %3 = alloca %struct.hardware_path, align 8
  %4 = alloca [28 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.parisc_device* %0, %struct.parisc_device** %2, align 8
  %7 = getelementptr inbounds [28 x i8], [28 x i8]* %4, i64 0, i64 0
  store i8* %7, i8** %5, align 8
  %8 = load %struct.parisc_device*, %struct.parisc_device** %2, align 8
  %9 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @get_node_path(i32 %11, %struct.hardware_path* %3)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %38, %1
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %3, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %38

25:                                               ; preds = %16
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds %struct.hardware_path, %struct.hardware_path* %3, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = trunc i32 %32 to i8
  %34 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 zeroext %33)
  %35 = load i8*, i8** %5, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %25, %24
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.parisc_device*, %struct.parisc_device** %2, align 8
  %44 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i8
  %47 = call i32 @sprintf(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %46)
  %48 = load %struct.parisc_device*, %struct.parisc_device** %2, align 8
  %49 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds [28 x i8], [28 x i8]* %4, i64 0, i64 0
  %51 = call i32 @dev_set_name(%struct.TYPE_2__* %49, i8* %50)
  ret void
}

declare dso_local i32 @get_node_path(i32, %struct.hardware_path*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
