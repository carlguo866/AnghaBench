; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_get_resource_byname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_get_resource_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.platform_device = type { i32, %struct.resource* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %47, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = load %struct.resource*, %struct.resource** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %19, i64 %21
  store %struct.resource* %22, %struct.resource** %9, align 8
  %23 = load %struct.resource*, %struct.resource** %9, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %47

32:                                               ; preds = %16
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.resource*, %struct.resource** %9, align 8
  %35 = call i32 @resource_type(%struct.resource* %34)
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.resource*, %struct.resource** %9, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strcmp(i32 %40, i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load %struct.resource*, %struct.resource** %9, align 8
  store %struct.resource* %45, %struct.resource** %4, align 8
  br label %51

46:                                               ; preds = %37, %32
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %10

50:                                               ; preds = %10
  store %struct.resource* null, %struct.resource** %4, align 8
  br label %51

51:                                               ; preds = %50, %44
  %52 = load %struct.resource*, %struct.resource** %4, align 8
  ret %struct.resource* %52
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @resource_type(%struct.resource*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
