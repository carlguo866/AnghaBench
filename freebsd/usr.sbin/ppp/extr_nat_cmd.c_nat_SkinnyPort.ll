; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_nat_SkinnyPort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_nat_SkinnyPort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32* }

@la = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nat_SkinnyPort(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %6 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %7 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %10 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @la, align 4
  %15 = call i32 @LibAliasSetSkinnyPort(i32 %14, i64 0)
  store i32 0, i32* %2, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %18 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %21 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = icmp ne i32 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %49

26:                                               ; preds = %16
  %27 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %28 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %31 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strtol(i32 %35, i8** %4, i32 10)
  store i64 %36, i64* %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %26
  %42 = load i64, i64* %5, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %26
  store i32 -1, i32* %2, align 4
  br label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @la, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @LibAliasSetSkinnyPort(i32 %46, i64 %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %44, %25, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @LibAliasSetSkinnyPort(i32, i64) #1

declare dso_local i64 @strtol(i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
