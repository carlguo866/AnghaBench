; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_checkuser.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ftpd.c_checkuser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @checkuser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkuser(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @BUFSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %39, %32, %17
  %19 = trunc i64 %11 to i32
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @fgets(i8* %13, i32 %19, i32* %20)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = call i8* @strchr(i8* %13, i8 signext 10)
  store i8* %24, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds i8, i8* %13, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 35
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %18

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strcmp(i8* %13, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %40

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %23
  br label %18

40:                                               ; preds = %37, %18
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @fclose(i32* %41)
  br label %43

43:                                               ; preds = %40, %2
  %44 = load i32, i32* %6, align 4
  %45 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %45)
  ret i32 %44
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
