; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_dis.c_dt_dis_xlate.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_dis.c_dt_dis_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"%-4s DT_XLREF[%u], %%r%u\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\09\09! DT_XLREF[%u] = %u.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i32, i32*)* @dt_dis_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_dis_xlate(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @DIF_INSTR_XLREF(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @DIF_INSTR_RD(i32 %15)
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14, i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %28, i64 %30
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %42, i64 %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %39, i8* %48)
  br label %50

50:                                               ; preds = %23, %4
  ret void
}

declare dso_local i32 @DIF_INSTR_XLREF(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @DIF_INSTR_RD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
