; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_fileobjs.c_AddrSearchFirst.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_fileobjs.c_AddrSearchFirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i32 }

@AddressFileListLock = common dso_local global i32 0, align 4
@AddressFileListHead = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@ADDRESS_FILE = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddrSearchFirst(i32 %0, i8* %1, i8* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = call i32 @TcpipAcquireSpinLock(i32* @AddressFileListLock, i32* %9)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @AddressFileListHead, i32 0, i32 0), align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = call i32 @IsListEmpty(%struct.TYPE_7__* @AddressFileListHead)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ADDRESS_FILE, align 4
  %30 = load i32, i32* @ListEntry, align 4
  %31 = call i32 @CONTAINING_RECORD(i32 %28, i32 %29, i32 %30)
  %32 = call i32 @ReferenceObject(i32 %31)
  br label %33

33:                                               ; preds = %25, %4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @TcpipReleaseSpinLock(i32* @AddressFileListLock, i32 %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = call i32 @AddrSearchNext(%struct.TYPE_6__* %36)
  ret i32 %37
}

declare dso_local i32 @TcpipAcquireSpinLock(i32*, i32*) #1

declare dso_local i32 @IsListEmpty(%struct.TYPE_7__*) #1

declare dso_local i32 @ReferenceObject(i32) #1

declare dso_local i32 @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @TcpipReleaseSpinLock(i32*, i32) #1

declare dso_local i32 @AddrSearchNext(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
