; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_NewInquiryUnitSerialNumber.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_NewInquiryUnitSerialNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@DAC960_ImmediateCommand = common dso_local global i32 0, align 4
@DAC960_V2_NormalCompletion = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @DAC960_V2_NewInquiryUnitSerialNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_V2_NewInquiryUnitSerialNumber(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_8__* @DAC960_AllocateCommand(i32* %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32* %16, i32** %10, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = call i32 @DAC960_V2_ClearCommand(%struct.TYPE_8__* %17)
  %19 = load i32, i32* @DAC960_ImmediateCommand, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @DAC960_V2_ConstructNewUnitSerialNumber(i32* %22, i32* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_8__* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = call i32 @DAC960_DeallocateCommand(%struct.TYPE_8__* %34)
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local %struct.TYPE_8__* @DAC960_AllocateCommand(i32*) #1

declare dso_local i32 @DAC960_V2_ClearCommand(%struct.TYPE_8__*) #1

declare dso_local i32 @DAC960_V2_ConstructNewUnitSerialNumber(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @DAC960_ExecuteCommand(%struct.TYPE_8__*) #1

declare dso_local i32 @DAC960_DeallocateCommand(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
