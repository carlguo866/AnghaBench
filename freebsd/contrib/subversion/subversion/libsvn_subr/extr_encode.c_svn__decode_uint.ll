; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_encode.c_svn__decode_uint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_encode.c_svn__decode_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN__MAX_ENCODED_UINT_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn__decode_uint(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = ptrtoint i8* %10 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  %15 = load i32, i32* @SVN__MAX_ENCODED_UINT_LEN, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp sgt i64 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @SVN__MAX_ENCODED_UINT_LEN, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %18, %3
  br label %24

24:                                               ; preds = %51, %23
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ult i8* %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @SVN__PREDICT_TRUE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %24
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %36, 128
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 7
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i8*, i8** %6, align 8
  store i8* %44, i8** %4, align 8
  br label %53

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 7
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 127
  %50 = or i32 %47, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %45
  br label %24

52:                                               ; preds = %24
  store i8* null, i8** %4, align 8
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i8*, i8** %4, align 8
  ret i8* %54
}

declare dso_local i64 @SVN__PREDICT_TRUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
