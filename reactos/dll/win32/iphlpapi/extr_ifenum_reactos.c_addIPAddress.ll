; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_addIPAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_addIPAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@FILE_READ_DATA = common dso_local global i32 0, align 4
@FILE_WRITE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@IOCTL_SET_IP_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"addIPAddress for if %d returning 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addIPAddress(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 4
  %15 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* @FILE_READ_DATA, align 4
  %17 = load i32, i32* @FILE_WRITE_DATA, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @openTcpFile(i32* %12, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %13, align 4
  %22 = call i64 @NT_SUCCESS(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %6, align 4
  br label %58

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @IOCTL_SET_IP_ADDRESS, align 4
  %35 = call i32 @NtDeviceIoControlFile(i32 %33, i32* null, i32* null, i32* null, %struct.TYPE_7__* %15, i32 %34, %struct.TYPE_6__* %14, i32 12, %struct.TYPE_6__* %14, i32 12)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @closeTcpFile(i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = call i64 @NT_SUCCESS(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %26
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @NT_SUCCESS(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %24
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @openTcpFile(i32*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @NtDeviceIoControlFile(i32, i32*, i32*, i32*, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @closeTcpFile(i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
