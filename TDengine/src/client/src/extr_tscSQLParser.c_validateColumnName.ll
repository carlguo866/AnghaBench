; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateColumnName.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateColumnName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64 }

@TSDB_CODE_INVALID_SQL = common dso_local global i64 0, align 8
@TK_STRING = common dso_local global i64 0, align 8
@TK_ID = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @validateColumnName(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = call i32 @isKeyWord(i8* %7, i64 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %14, i64* %2, align 8
  br label %75

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %22 = call i8* @tSQLGetToken(i8* %20, i64* %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TK_STRING, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TK_ID, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %35, i64* %2, align 8
  br label %75

36:                                               ; preds = %29, %15
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TK_STRING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strdequote(i8* %43)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @strtrim(i8* %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %55 = call i8* @tSQLGetToken(i8* %53, i64* %54)
  %56 = ptrtoint i8* %55 to i64
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %41
  %62 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %62, i64* %2, align 8
  br label %75

63:                                               ; preds = %41
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @validateColumnName(i8* %65)
  store i64 %66, i64* %2, align 8
  br label %75

67:                                               ; preds = %36
  %68 = call i64 @isNumber(%struct.TYPE_3__* %5)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i64, i64* @TSDB_CODE_INVALID_SQL, align 8
  store i64 %71, i64* %2, align 8
  br label %75

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  store i64 %74, i64* %2, align 8
  br label %75

75:                                               ; preds = %73, %70, %63, %61, %34, %13
  %76 = load i64, i64* %2, align 8
  ret i64 %76
}

declare dso_local i32 @isKeyWord(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @tSQLGetToken(i8*, i64*) #1

declare dso_local i32 @strdequote(i8*) #1

declare dso_local i32 @strtrim(i8*) #1

declare dso_local i64 @isNumber(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
