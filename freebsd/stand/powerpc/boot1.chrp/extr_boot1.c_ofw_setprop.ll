; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/boot1.chrp/extr_boot1.c_ofw_setprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/boot1.chrp/extr_boot1.c_ofw_setprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"setprop\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"ofw_setprop: ofwh=0x%x buf=%p len=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i64)* @ofw_setprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofw_setprop(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [8 x i32], align 16
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32 ptrtoint ([8 x i8]* @.str to i32), i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 4, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  %17 = load i8*, i8** %7, align 8
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds i32, i32* %16, i64 1
  %20 = load i8*, i8** %8, align 8
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %19, align 4
  %22 = getelementptr inbounds i32, i32* %19, i64 1
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %27 = call i64 @ofw(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* %31, i64 %32)
  store i32 1, i32* %5, align 4
  br label %35

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i64 @ofw(i32*) #1

declare dso_local i32 @printf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
