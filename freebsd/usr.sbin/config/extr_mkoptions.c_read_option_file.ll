; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_mkoptions.c_read_option_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_mkoptions.c_read_option_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EOF = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: compat file requires two words per line at %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"opt_%s.h\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @read_option_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_option_file(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %100, %53, %33, %23
  %25 = load i32*, i32** %6, align 8
  %26 = call i8* @get_word(i32* %25)
  store i8* %26, i8** %7, align 8
  %27 = load i64, i64* @EOF, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = icmp ne i8* %26, %28
  br i1 %29, label %30, label %101

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %24

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 35
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i32*, i32** %6, align 8
  %43 = call i8* @get_word(i32* %42)
  store i8* %43, i8** %7, align 8
  %44 = load i64, i64* @EOF, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = icmp ne i8* %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i1 [ false, %41 ], [ %49, %47 ]
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  br label %41

53:                                               ; preds = %50
  br label %24

54:                                               ; preds = %34
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @ns(i8* %55)
  store i8* %56, i8** %8, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i8* @get_word(i32* %57)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i64, i64* @EOF, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = icmp eq i8* %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

64:                                               ; preds = %54
  %65 = load i8*, i8** %9, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* @stderr, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %72, i8* %73)
  %75 = call i32 @exit(i32 1) #4
  unreachable

76:                                               ; preds = %67
  %77 = load i8*, i8** %8, align 8
  %78 = call i8* @ns(i8* %77)
  store i8* %78, i8** %13, align 8
  %79 = trunc i64 %15 to i32
  %80 = load i8*, i8** %13, align 8
  %81 = call i8* @lower(i8* %80)
  %82 = call i32 @snprintf(i8* %17, i32 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %81)
  store i8* %17, i8** %9, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %76, %64
  %86 = load i8*, i8** %9, align 8
  %87 = call i8* @ns(i8* %86)
  store i8* %87, i8** %9, align 8
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i8*, i8** %4, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @insert_option(i8* %91, i8* %92, i8* %93)
  br label %100

95:                                               ; preds = %85
  %96 = load i8*, i8** %8, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @update_option(i8* %96, i8* %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %90
  br label %24

101:                                              ; preds = %24
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @fclose(i32* %102)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

104:                                              ; preds = %101, %63, %22
  %105 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @get_word(i32*) #2

declare dso_local i8* @ns(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @lower(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @insert_option(i8*, i8*, i8*) #2

declare dso_local i32 @update_option(i8*, i8*, i32) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
