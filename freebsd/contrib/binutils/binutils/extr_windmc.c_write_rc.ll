; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_write_rc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_write_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [82 x i8] c"/* Do not edit this file manually.\0A   This file is autogenerated by windmc.  */\0A\0A\00", align 1
@mc_nodes_lang_count = common dso_local global i32 0, align 4
@mc_nodes_lang = common dso_local global %struct.TYPE_7__** null, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"\0A// Country: %s\0A// Language: %s\0A#pragma code_page(%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"LANGUAGE 0x%lx, 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"1 MESSAGETABLE \22\00", align 1
@mcset_prefix_bin = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%s_\00", align 1
@mcset_mc_basename = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c".bin\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @write_rc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @mc_nodes_lang_count, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %105

11:                                               ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %102, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @mc_nodes_lang_count, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %105

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @mc_nodes_lang, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %23, i64 %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp eq %struct.TYPE_6__* %22, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %102

32:                                               ; preds = %19, %16
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @mc_nodes_lang, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %35, i64 %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %3, align 8
  %40 = load i32*, i32** %2, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %46, i8* %52, i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, 1023
  %68 = sext i32 %67 to i64
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 65535
  %75 = ashr i32 %74, 10
  %76 = sext i32 %75 to i64
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %76)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i64, i64* @mcset_prefix_bin, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %32
  %83 = load i32*, i32** %2, align 8
  %84 = load i8*, i8** @mcset_mc_basename, align 8
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %82, %32
  %87 = load i32*, i32** %2, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @unichar_len(i32 %97)
  %99 = call i32 @unicode_print(i32* %87, i32 %92, i32 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %86, %31
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %12

105:                                              ; preds = %10, %12
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @unicode_print(i32*, i32, i32) #1

declare dso_local i32 @unichar_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
