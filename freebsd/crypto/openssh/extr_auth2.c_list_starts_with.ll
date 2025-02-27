; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_list_starts_with.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_list_starts_with.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATCH_NONE = common dso_local global i32 0, align 4
@MATCH_METHOD = common dso_local global i32 0, align 4
@MATCH_PARTIAL = common dso_local global i32 0, align 4
@MATCH_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @list_starts_with to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_starts_with(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @strncmp(i8* %13, i8* %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @MATCH_NONE, align 4
  store i32 %19, i32* %4, align 4
  br label %65

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8* %23, i8** %10, align 8
  %24 = load i32, i32* @MATCH_METHOD, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 58
  br i1 %28, label %29, label %51

29:                                               ; preds = %20
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @MATCH_PARTIAL, align 4
  store i32 %33, i32* %4, align 4
  br label %65

34:                                               ; preds = %29
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strlen(i8* %35)
  store i64 %36, i64* %8, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @strncmp(i8* %39, i8* %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @MATCH_NONE, align 4
  store i32 %45, i32* %4, align 4
  br label %65

46:                                               ; preds = %34
  %47 = load i64, i64* %8, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %49, i8** %10, align 8
  %50 = load i32, i32* @MATCH_BOTH, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %20
  %52 = load i8*, i8** %10, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 44
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i8*, i8** %10, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @MATCH_NONE, align 4
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %61, %44, %32, %18
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
