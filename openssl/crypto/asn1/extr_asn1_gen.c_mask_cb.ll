; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_gen.c_mask_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_gen.c_mask_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@B_ASN1_DIRECTORYSTRING = common dso_local global i64 0, align 8
@ASN1_GEN_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @mask_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mask_cb(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* @B_ASN1_DIRECTORYSTRING, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = or i64 %26, %24
  store i64 %27, i64* %25, align 8
  store i32 1, i32* %4, align 4
  br label %51

28:                                               ; preds = %19, %16
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @asn1_str2tag(i8* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @ASN1_GEN_FLAG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %28
  store i32 0, i32* %4, align 4
  br label %51

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @ASN1_tag2bit(i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %51

46:                                               ; preds = %40
  %47 = load i64, i64* %9, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %49, %47
  store i64 %50, i64* %48, align 8
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %45, %39, %23, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @asn1_str2tag(i8*, i32) #1

declare dso_local i64 @ASN1_tag2bit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
