; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_util.c_edit_deltat.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_util.c_edit_deltat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edit_deltat(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %43

21:                                               ; preds = %14, %4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %25 = call i32 @deltat2str(i32 %23, i8* %24, i32 1024)
  br label %26

26:                                               ; preds = %41, %21
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %30 = call i64 @get_response(i8* %27, i8* %28, i8* %29, i32 1024)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %43

33:                                               ; preds = %26
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @parse_deltat(i8* %34, i32* %35, i32* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %42

41:                                               ; preds = %33
  br label %26

42:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %32, %20
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @deltat2str(i32, i8*, i32) #1

declare dso_local i64 @get_response(i8*, i8*, i8*, i32) #1

declare dso_local i64 @parse_deltat(i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
