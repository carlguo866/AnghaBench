; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_parse_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_parse_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%x%*c%x%*c%x%*c%x%*c%x%*c%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dme_parse_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dme_parse_macaddr(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 0
  %17 = getelementptr inbounds i32, i32* %14, i64 1
  %18 = getelementptr inbounds i32, i32* %14, i64 2
  %19 = getelementptr inbounds i32, i32* %14, i64 3
  %20 = getelementptr inbounds i32, i32* %14, i64 4
  %21 = getelementptr inbounds i32, i32* %14, i64 5
  %22 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %29 = call i32 @memset(i32* %27, i32 0, i32 %28)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %49

30:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %14, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 255
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %31

48:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %26
  %50 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
