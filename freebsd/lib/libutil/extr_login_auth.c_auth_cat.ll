; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_auth.c_auth_cat.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_login_auth.c_auth_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_cat(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i32, i32* @BUFSIZ, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = load i32, i32* @O_CLOEXEC, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @open(i8* %13, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %35

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %26, %20
  %22 = load i32, i32* %4, align 4
  %23 = trunc i64 %10 to i32
  %24 = call i32 @read(i32 %22, i8* %12, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @fileno(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @write(i32 %28, i8* %12, i32 %29)
  br label %21

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @close(i32 %32)
  %34 = call i32 @sleep(i32 5)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %19
  %36 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @fileno(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @sleep(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
