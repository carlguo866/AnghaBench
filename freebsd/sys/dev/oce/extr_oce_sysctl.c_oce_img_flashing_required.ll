; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_img_flashing_required.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_sysctl.c_oce_img_flashing_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i64, i64, i64)* @oce_img_flashing_required to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oce_img_flashing_required(i32 %0, i8* %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i64, i64* %13, align 8
  %18 = load i64, i64* %11, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* %12, align 8
  %21 = add nsw i64 %19, %20
  %22 = sub nsw i64 %21, 4
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %14, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 %23
  store i8* %25, i8** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %28 = load i64, i64* %12, align 8
  %29 = sub nsw i64 %28, 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @oce_mbox_get_flashrom_crc(i32 %26, i32* %27, i64 %29, i32 %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %7, align 4
  br label %45

36:                                               ; preds = %6
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @bcmp(i32* %37, i8* %38, i32 4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %7, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %41, %34
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @oce_mbox_get_flashrom_crc(i32, i32*, i64, i32) #1

declare dso_local i64 @bcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
