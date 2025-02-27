; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_iruserok.c___icheckhost.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_iruserok.c___icheckhost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @__icheckhost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__icheckhost(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = call i64 @isdigit(i8 zeroext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @inet_addr(i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp ne i64 %16, -1
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %13, %2
  %24 = load i8*, i8** %5, align 8
  %25 = call %struct.hostent* @gethostbyname(i8* %24)
  store %struct.hostent* %25, %struct.hostent** %6, align 8
  %26 = icmp eq %struct.hostent* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %47

28:                                               ; preds = %23
  %29 = load %struct.hostent*, %struct.hostent** %6, align 8
  %30 = getelementptr inbounds %struct.hostent, %struct.hostent* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  store i8** %31, i8*** %8, align 8
  br label %32

32:                                               ; preds = %43, %28
  %33 = load i8**, i8*** %8, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i8**, i8*** %8, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @memcmp(i32* %4, i8* %38, i32 4)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %47

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load i8**, i8*** %8, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %8, align 8
  br label %32

46:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %41, %27, %18
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
