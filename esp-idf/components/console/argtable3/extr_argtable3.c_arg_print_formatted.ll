; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_formatted.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_print_formatted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arg_print_formatted(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub i32 %18, %19
  %21 = add i32 %20, 1
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @fprintf(i32* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %25, %4
  br label %30

30:                                               ; preds = %121, %29
  %31 = load i32, i32* %11, align 4
  %32 = sub i32 %31, 1
  %33 = load i32, i32* %10, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %124

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %45, %35
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = call i64 @isspace(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %10, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %36

48:                                               ; preds = %36
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %55, %56
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %81, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sub i32 %64, %65
  %67 = load i32, i32* %12, align 4
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = call i64 @isspace(i32 %75)
  %77 = icmp ne i64 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %69, %63, %59
  %80 = phi i1 [ false, %63 ], [ false, %59 ], [ %78, %69 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %11, align 4
  br label %59

84:                                               ; preds = %79
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, -1
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %91, %84
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %87
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @fputc(i8 signext %96, i32* %97)
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %87

101:                                              ; preds = %87
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @fputc(i8 signext 10, i32* %102)
  %104 = load i32, i32* %11, align 4
  %105 = add i32 %104, 1
  %106 = load i32, i32* %9, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %101
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %116, %108
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @fputc(i8 signext 32, i32* %114)
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %109

119:                                              ; preds = %109
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %119, %101
  %122 = load i32, i32* %11, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %30

124:                                              ; preds = %30
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i64 @isspace(i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
