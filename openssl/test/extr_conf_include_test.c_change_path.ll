; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_conf_include_test.c_change_path.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_conf_include_test.c_change_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIRSEP = common dso_local global i32 0, align 4
@DIRSEP_PRESERVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"changing path to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @change_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_path(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @OPENSSL_strdup(i8* %8)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %20, %14
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* @DIRSEP, align 4
  %18 = call i8* @strpbrk(i8* %16, i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  store i8* %21, i8** %6, align 8
  br label %15

23:                                               ; preds = %15
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %38

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* @DIRSEP_PRESERVE, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @TEST_note(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @chdir(i8* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @OPENSSL_free(i8* %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %27, %26, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i8* @OPENSSL_strdup(i8*) #1

declare dso_local i8* @strpbrk(i8*, i32) #1

declare dso_local i32 @TEST_note(i8*, i8*) #1

declare dso_local i32 @chdir(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
