; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_auth_subr.c_chapSHA1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/iscontrol/extr_auth_subr.c_chapSHA1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, i8*, i8*)* @chapSHA1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chapSHA1(i8 signext %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = call i32 @debug_called(i32 3)
  %14 = call i32 @SHA1_Init(i32* %10)
  %15 = call i32 @SHA1_Update(i32* %10, i8* %6, i32 1)
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @str2bin(i8* %16, i8** %11)
  store i32 %17, i32* %12, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %38

20:                                               ; preds = %4
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @SHA1_Update(i32* %10, i8* %21, i32 %22)
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @str2bin(i8* %26, i8** %11)
  store i32 %27, i32* %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %38

30:                                               ; preds = %20
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @SHA1_Update(i32* %10, i8* %31, i32 %32)
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @SHA1_Final(i8* %36, i32* %10)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %29, %19
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @SHA1_Init(i32*) #1

declare dso_local i32 @SHA1_Update(i32*, i8*, i32) #1

declare dso_local i32 @str2bin(i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @SHA1_Final(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
