; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_extract_keyphrase.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_extract_keyphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"http://www.google.\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"http://webcache.googleusercontent.com/\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"http://translate.googleusercontent.com/\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"https://www.google.\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"https://webcache.googleusercontent.com/\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"https://translate.googleusercontent.com/\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"/+&\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"/+\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"q=cache:\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"&q=\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"?q=\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%26q%3D\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%3Fq%3D\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%26\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @extract_keyphrase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_keyphrase(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strstr(i8* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i8* %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i8* %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strstr(i8* %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i8* %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @strstr(i8* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i8* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @strstr(i8* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp ne i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @strstr(i8* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %129

35:                                               ; preds = %30, %26, %22, %18, %14, %2
  %36 = load i8*, i8** %4, align 8
  %37 = call i8* @strstr(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i8* %37, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %129

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = call i8* @strstr(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %42, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8* %46, i8** %6, align 8
  br label %92

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @strstr(i8* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i8* %49, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 43)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = add nsw i64 %61, 1
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %6, align 8
  br label %65

65:                                               ; preds = %56, %51
  br label %91

66:                                               ; preds = %47
  %67 = load i8*, i8** %4, align 8
  %68 = call i8* @strstr(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  store i8* %68, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %4, align 8
  %72 = call i8* @strstr(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  store i8* %72, i8** %6, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %66
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  store i8* %76, i8** %6, align 8
  br label %90

77:                                               ; preds = %70
  %78 = load i8*, i8** %4, align 8
  %79 = call i8* @strstr(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i8* %79, i8** %6, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %4, align 8
  %83 = call i8* @strstr(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  store i8* %83, i8** %6, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %81, %77
  store i32 1, i32* %10, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 7
  store i8* %87, i8** %6, align 8
  br label %89

88:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %129

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89, %74
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91, %44
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i8*, i8** %6, align 8
  %98 = call i8* @strchr(i8* %97, i8 signext 38)
  store i8* %98, i8** %7, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** %7, align 8
  store i8 0, i8* %101, align 1
  br label %112

102:                                              ; preds = %96, %93
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i8*, i8** %6, align 8
  %107 = call i8* @strstr(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  store i8* %107, i8** %7, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i8*, i8** %7, align 8
  store i8 0, i8* %110, align 1
  br label %111

111:                                              ; preds = %109, %105, %102
  br label %112

112:                                              ; preds = %111, %100
  %113 = load i8*, i8** %6, align 8
  %114 = call i8* @decode_url(i8* %113)
  store i8* %114, i8** %9, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load i8*, i8** %9, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117, %112
  store i32 1, i32* %3, align 4
  br label %129

123:                                              ; preds = %117
  %124 = load i8*, i8** %9, align 8
  %125 = call i8* @char_replace(i8* %124, i8 signext 43, i8 signext 32)
  store i8* %125, i8** %9, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = call i8* @trim_str(i8* %126)
  %128 = load i8**, i8*** %5, align 8
  store i8* %127, i8** %128, align 8
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %123, %122, %88, %39, %34
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @decode_url(i8*) #1

declare dso_local i8* @char_replace(i8*, i8 signext, i8 signext) #1

declare dso_local i8* @trim_str(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
