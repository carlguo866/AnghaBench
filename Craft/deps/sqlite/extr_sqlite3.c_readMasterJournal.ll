; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_readMasterJournal.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_readMasterJournal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@aJournalMagic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @readMasterJournal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readMasterJournal(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %15, align 1
  %16 = load i32, i32* @SQLITE_OK, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @sqlite3OsFileSize(i32* %17, i32* %10)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %65, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 16
  br i1 %22, label %65, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @SQLITE_OK, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %26, 16
  %28 = call i32 @read32bits(i32* %25, i32 %27, i32* %9)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %65, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %65, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @SQLITE_OK, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 12
  %39 = call i32 @read32bits(i32* %36, i32 %38, i32* %11)
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %65, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 8
  %47 = call i32 (i32*, ...) @sqlite3OsRead(i32* %43, i8* %44, i32 8, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %42, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %51 = load i32, i32* @aJournalMagic, align 4
  %52 = call i64 @memcmp(i8* %50, i32 %51, i32 8)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @SQLITE_OK, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %59, 16
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %60, %61
  %63 = call i32 (i32*, ...) @sqlite3OsRead(i32* %56, i8* %57, i32 %58, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = icmp ne i32 %55, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %54, %49, %41, %34, %30, %23, %20, %3
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %94

67:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %81, %67
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = load i32, i32* %11, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %12, align 4
  br label %68

84:                                               ; preds = %68
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %84
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i32, i32* @SQLITE_OK, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %65
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @sqlite3OsFileSize(i32*, i32*) #1

declare dso_local i32 @read32bits(i32*, i32, i32*) #1

declare dso_local i32 @sqlite3OsRead(i32*, ...) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
