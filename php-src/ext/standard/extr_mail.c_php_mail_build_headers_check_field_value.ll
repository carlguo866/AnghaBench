; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_mail.c_php_mail_build_headers_check_field_value.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_mail.c_php_mail_build_headers_check_field_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @php_mail_build_headers_check_field_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_mail_build_headers_check_field_value(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_3__* @Z_STR_P(i32* %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  br label %8

8:                                                ; preds = %76, %60, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %79

14:                                               ; preds = %8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 13
  br i1 %22, label %23, label %65

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = sub i64 %26, %27
  %29 = icmp uge i64 %28, 3
  br i1 %29, label %30, label %63

30:                                               ; preds = %23
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %63

40:                                               ; preds = %30
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %60, label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 9
  br i1 %59, label %60, label %63

60:                                               ; preds = %50, %40
  %61 = load i64, i64* %4, align 8
  %62 = add i64 %61, 3
  store i64 %62, i64* %4, align 8
  br label %8

63:                                               ; preds = %50, %30, %23
  %64 = load i32, i32* @FAILURE, align 4
  store i32 %64, i32* %2, align 4
  br label %81

65:                                               ; preds = %14
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @FAILURE, align 4
  store i32 %75, i32* %2, align 4
  br label %81

76:                                               ; preds = %65
  %77 = load i64, i64* %4, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %4, align 8
  br label %8

79:                                               ; preds = %8
  %80 = load i32, i32* @SUCCESS, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %74, %63
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_3__* @Z_STR_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
