; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_Xz_CheckFooter.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_Xz_CheckFooter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XZ_FOOTER_SIG_0 = common dso_local global i64 0, align 8
@XZ_FOOTER_SIG_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64*)* @Xz_CheckFooter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Xz_CheckFooter(i64 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i64*, i64** %6, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 4
  %10 = call i64 @GetUi32(i64* %9)
  %11 = trunc i64 %10 to i32
  %12 = add nsw i32 %11, 1
  %13 = shl i32 %12, 2
  %14 = icmp eq i32 %7, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load i64*, i64** %6, align 8
  %17 = call i64 @GetUi32(i64* %16)
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 4
  %20 = call i64 @CrcCalc(i64* %19, i32 6)
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 8
  %26 = call i64 @GetBe16(i64* %25)
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i64*, i64** %6, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 10
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XZ_FOOTER_SIG_0, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 11
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XZ_FOOTER_SIG_1, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %34, %28, %22, %15, %3
  %41 = phi i1 [ false, %28 ], [ false, %22 ], [ false, %15 ], [ false, %3 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i64 @GetUi32(i64*) #1

declare dso_local i64 @CrcCalc(i64*, i32) #1

declare dso_local i64 @GetBe16(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
