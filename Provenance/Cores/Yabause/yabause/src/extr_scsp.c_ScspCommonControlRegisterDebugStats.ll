; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspCommonControlRegisterDebugStats.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspCommonControlRegisterDebugStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"Memory: %s\0D\0A\00", align 1
@scsp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"4 Mbit\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"2 Mbit\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Master volume: %ld\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Ring buffer length: %ld\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Ring buffer address: %08lX\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Slot Status Registers\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"-----------------\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Monitor slot: %ld\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Call address: %ld\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"DMA Registers\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"DMA memory address start: %08lX\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"DMA register address start: %08lX\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"DMA Flags: %lX\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Timer Registers\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Timer A counter: %02lX\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Timer A increment: Every %d sample(s)\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Timer B counter: %02lX\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Timer B increment: Every %d sample(s)\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Timer C counter: %02lX\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Timer C increment: Every %d sample(s)\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Interrupt Registers\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Sound cpu interrupt pending: %04lX\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Sound cpu interrupt enable: %04lX\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Sound cpu interrupt level 0: %04lX\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"Sound cpu interrupt level 1: %04lX\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"Sound cpu interrupt level 2: %04lX\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"Main cpu interrupt pending: %04lX\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Main cpu interrupt enable: %04lX\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScspCommonControlRegisterDebugStats(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 21), align 8
  %5 = icmp ne i64 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %8 = call i32 (i8*, i8*, ...) @AddString(i8* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** %2, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 20), align 8
  %11 = call i32 (i8*, i8*, ...) @AddString(i8* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %10)
  %12 = load i8*, i8** %2, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 19), align 8
  %14 = call i32 (i8*, i8*, ...) @AddString(i8* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %13)
  %15 = load i8*, i8** %2, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 18), align 8
  %17 = call i32 (i8*, i8*, ...) @AddString(i8* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %16)
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 (i8*, i8*, ...) @AddString(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i8*, i8*, ...) @AddString(i8* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 (i8*, i8*, ...) @AddString(i8* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %24 = load i8*, i8** %2, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 17), align 8
  %26 = call i32 (i8*, i8*, ...) @AddString(i8* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %25)
  %27 = load i8*, i8** %2, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 16), align 8
  %29 = call i32 (i8*, i8*, ...) @AddString(i8* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %28)
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 (i8*, i8*, ...) @AddString(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 (i8*, i8*, ...) @AddString(i8* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 (i8*, i8*, ...) @AddString(i8* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %36 = load i8*, i8** %2, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 15), align 8
  %38 = call i32 (i8*, i8*, ...) @AddString(i8* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i64 %37)
  %39 = load i8*, i8** %2, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 14), align 8
  %41 = call i32 (i8*, i8*, ...) @AddString(i8* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i64 %40)
  %42 = load i8*, i8** %2, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 13), align 8
  %44 = call i32 (i8*, i8*, ...) @AddString(i8* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i64 %43)
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 (i8*, i8*, ...) @AddString(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 (i8*, i8*, ...) @AddString(i8* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 (i8*, i8*, ...) @AddString(i8* %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %51 = load i8*, i8** %2, align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 12), align 8
  %53 = lshr i64 %52, 8
  %54 = call i32 (i8*, i8*, ...) @AddString(i8* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i64 %53)
  %55 = load i8*, i8** %2, align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 11), align 8
  %57 = sitofp i64 %56 to double
  %58 = call i64 @pow(i32 2, double %57)
  %59 = trunc i64 %58 to i32
  %60 = call i32 (i8*, i8*, ...) @AddString(i8* %55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i32 %59)
  %61 = load i8*, i8** %2, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 10), align 8
  %63 = lshr i64 %62, 8
  %64 = call i32 (i8*, i8*, ...) @AddString(i8* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i64 %63)
  %65 = load i8*, i8** %2, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 9), align 8
  %67 = sitofp i64 %66 to double
  %68 = call i64 @pow(i32 2, double %67)
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i8*, i8*, ...) @AddString(i8* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %2, align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 8), align 8
  %73 = lshr i64 %72, 8
  %74 = call i32 (i8*, i8*, ...) @AddString(i8* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i64 %73)
  %75 = load i8*, i8** %2, align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 7), align 8
  %77 = sitofp i64 %76 to double
  %78 = call i64 @pow(i32 2, double %77)
  %79 = trunc i64 %78 to i32
  %80 = call i32 (i8*, i8*, ...) @AddString(i8* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i32 %79)
  %81 = load i8*, i8** %2, align 8
  %82 = call i32 (i8*, i8*, ...) @AddString(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %83 = load i8*, i8** %2, align 8
  %84 = call i32 (i8*, i8*, ...) @AddString(i8* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0))
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 (i8*, i8*, ...) @AddString(i8* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %87 = load i8*, i8** %2, align 8
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 6), align 8
  %89 = call i32 (i8*, i8*, ...) @AddString(i8* %87, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i64 %88)
  %90 = load i8*, i8** %2, align 8
  %91 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 5), align 8
  %92 = call i32 (i8*, i8*, ...) @AddString(i8* %90, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i64 %91)
  %93 = load i8*, i8** %2, align 8
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 4), align 8
  %95 = call i32 (i8*, i8*, ...) @AddString(i8* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0), i64 %94)
  %96 = load i8*, i8** %2, align 8
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 3), align 8
  %98 = call i32 (i8*, i8*, ...) @AddString(i8* %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0), i64 %97)
  %99 = load i8*, i8** %2, align 8
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 2), align 8
  %101 = call i32 (i8*, i8*, ...) @AddString(i8* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i64 %100)
  %102 = load i8*, i8** %2, align 8
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 1), align 8
  %104 = call i32 (i8*, i8*, ...) @AddString(i8* %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i64 %103)
  %105 = load i8*, i8** %2, align 8
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scsp, i32 0, i32 0), align 8
  %107 = call i32 (i8*, i8*, ...) @AddString(i8* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i64 %106)
  %108 = load i8*, i8** %2, align 8
  %109 = call i32 (i8*, i8*, ...) @AddString(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @AddString(i8*, i8*, ...) #1

declare dso_local i64 @pow(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
