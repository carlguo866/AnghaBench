; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_distfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ckdist/extr_ckdist.c_distfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISTMD5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @distfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @distfile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @disttype(i8* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @DISTMD5, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %23, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @strrchr(i8* %11, i8 signext 46)
  store i8* %12, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ugt i8* %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = call i32 @disttype(i8* %20)
  store i32 %21, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %1
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %18, %14, %10
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @disttype(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
