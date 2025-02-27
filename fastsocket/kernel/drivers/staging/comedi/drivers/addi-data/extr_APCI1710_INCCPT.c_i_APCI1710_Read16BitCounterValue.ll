; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_Read16BitCounterValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_APCI1710_INCCPT.c_i_APCI1710_Read16BitCounterValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.comedi_device = type { i32 }

@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"The selected 16-Bit counter parameter is wrong\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Counter not initialised\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"The selected module number parameter is wrong\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_Read16BitCounterValue(%struct.comedi_device* %0, i8 zeroext %1, i8 zeroext %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %65

14:                                               ; preds = %4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %62

26:                                               ; preds = %14
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  %37 = mul nsw i32 64, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = call i32 @outl(i32 1, i64 %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 4
  %46 = load i8, i8* %6, align 1
  %47 = zext i8 %46 to i32
  %48 = mul nsw i32 64, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = call i32 @inl(i64 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = mul nsw i32 16, %54
  %56 = lshr i32 %52, %55
  %57 = and i32 %56, 65535
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  br label %61

59:                                               ; preds = %26
  %60 = call i32 @DPRINTK(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %30
  br label %64

62:                                               ; preds = %14
  %63 = call i32 @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %61
  br label %67

65:                                               ; preds = %4
  %66 = call i32 @DPRINTK(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
