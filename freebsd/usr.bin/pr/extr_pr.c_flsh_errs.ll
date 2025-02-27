; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_flsh_errs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_flsh_errs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@stdout = common dso_local global i64 0, align 8
@err = common dso_local global i64 0, align 8
@stderr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flsh_errs() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @BUFSIZ, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = load i64, i64* @stdout, align 8
  %9 = call i32 @fflush(i64 %8)
  %10 = load i64, i64* @err, align 8
  %11 = call i32 @fflush(i64 %10)
  %12 = load i64, i64* @err, align 8
  %13 = load i64, i64* @stderr, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 1, i32* %3, align 4
  br label %28

16:                                               ; preds = %0
  %17 = load i64, i64* @err, align 8
  %18 = call i32 @rewind(i64 %17)
  br label %19

19:                                               ; preds = %24, %16
  %20 = load i32, i32* @BUFSIZ, align 4
  %21 = load i64, i64* @err, align 8
  %22 = call i32* @fgets(i8* %7, i32 %20, i64 %21)
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* @stderr, align 8
  %26 = call i32 @fputs(i8* %7, i64 %25)
  br label %19

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %29)
  %30 = load i32, i32* %3, align 4
  switch i32 %30, label %32 [
    i32 0, label %31
    i32 1, label %31
  ]

31:                                               ; preds = %28, %28
  ret void

32:                                               ; preds = %28
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fflush(i64) #2

declare dso_local i32 @rewind(i64) #2

declare dso_local i32* @fgets(i8*, i32, i64) #2

declare dso_local i32 @fputs(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
