; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_balance.c_resume_balance.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_balance.c_resume_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SE_MANAGE_VOLUME_PRIVILEGE = common dso_local global i32 0, align 4
@STATUS_PRIVILEGE_NOT_HELD = common dso_local global i32 0, align 4
@STATUS_DEVICE_NOT_READY = common dso_local global i32 0, align 4
@STATUS_MEDIA_WRITE_PROTECTED = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resume_balance(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @SE_MANAGE_VOLUME_PRIVILEGE, align 4
  %7 = call i32 @RtlConvertLongToLuid(i32 %6)
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @SeSinglePrivilegeCheck(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @STATUS_PRIVILEGE_NOT_HELD, align 4
  store i32 %12, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @STATUS_DEVICE_NOT_READY, align 4
  store i32 %20, i32* %3, align 4
  br label %45

21:                                               ; preds = %13
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @STATUS_DEVICE_NOT_READY, align 4
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %21
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @STATUS_MEDIA_WRITE_PROTECTED, align 4
  store i32 %35, i32* %3, align 4
  br label %45

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = call i32 @KeSetEvent(i32* %42, i32 0, i32 0)
  %44 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %36, %34, %27, %19, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @SeSinglePrivilegeCheck(i32, i32) #1

declare dso_local i32 @RtlConvertLongToLuid(i32) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
