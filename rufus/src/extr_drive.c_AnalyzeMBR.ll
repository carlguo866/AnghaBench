; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_AnalyzeMBR.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_AnalyzeMBR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i64 (i32*)* }
%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Master Boot Record\00", align 1
@SelectedDrive = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s does not have an x86 %s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@known_mbr = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"%s has a %s %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%s has an unknown %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AnalyzeMBR(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %12 = bitcast %struct.TYPE_5__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = bitcast %struct.TYPE_5__* %9 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i64, i64* %5, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @SelectedDrive, i32 0, i32 0), align 4
  %18 = call i32 @set_bytes_per_sector(i32 %17)
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @is_br(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 (i8*, i8*, i8*, ...) @suprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %4, align 4
  br label %65

27:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @known_mbr, align 8
  %31 = call i32 @ARRAYSIZE(%struct.TYPE_6__* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @known_mbr, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64 (i32*)*, i64 (i32*)** %38, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i64 %39(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %33
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @known_mbr, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 (i8*, i8*, i8*, ...) @suprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %44, i8* %52, i8* %53)
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %4, align 4
  br label %65

56:                                               ; preds = %33
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %28

60:                                               ; preds = %28
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 (i8*, i8*, i8*, ...) @suprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %61, i8* %62)
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %43, %22
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @set_bytes_per_sector(i32) #2

declare dso_local i32 @is_br(i32*) #2

declare dso_local i32 @suprintf(i8*, i8*, i8*, ...) #2

declare dso_local i32 @ARRAYSIZE(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
