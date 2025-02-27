; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_hdlc.c_hdlc_ReportStatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_hdlc.c_hdlc_ReportStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.hdlc }
%struct.hdlc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s HDLC level errors:\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c" Bad Frame Check Sequence fields: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c" Bad address (!= 0x%02x) fields:    %u\0A\00", align 1
@HDLC_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c" Bad command (!= 0x%02x) fields:    %u\0A\00", align 1
@HDLC_UI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c" Unrecognised protocol fields:    %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdlc_ReportStatus(%struct.cmdargs* %0) #0 {
  %2 = alloca %struct.cmdargs*, align 8
  %3 = alloca %struct.hdlc*, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %2, align 8
  %4 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %5 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.hdlc* %9, %struct.hdlc** %3, align 8
  %10 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %11 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, i32, ...) @prompt_Printf(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %20 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %23 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i32, i8*, i32, ...) @prompt_Printf(i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %28 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @HDLC_ADDR, align 4
  %31 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %32 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, i32, ...) @prompt_Printf(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %37 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HDLC_UI, align 4
  %40 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %41 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, i32, ...) @prompt_Printf(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %43)
  %45 = load %struct.cmdargs*, %struct.cmdargs** %2, align 8
  %46 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %49 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, i32, ...) @prompt_Printf(i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  ret i32 0
}

declare dso_local i32 @prompt_Printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
