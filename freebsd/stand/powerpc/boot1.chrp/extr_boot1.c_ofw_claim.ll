; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/boot1.chrp/extr_boot1.c_ofw_claim.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/boot1.chrp/extr_boot1.c_ofw_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"claim\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ofw_claim: virt=%p len=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @ofw_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_claim(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 ptrtoint ([6 x i8]* @.str to i32), i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 3, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds i32, i32* %12, i64 1
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds i32, i32* %15, i64 1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %23 = call i64 @ofw(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %26, i64 %27)
  store i32 1, i32* %4, align 4
  br label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @ofw(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
