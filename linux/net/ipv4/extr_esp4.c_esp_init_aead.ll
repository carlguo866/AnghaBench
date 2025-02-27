; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_init_aead.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4.c_esp_init_aead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i8*, %struct.TYPE_2__*, %struct.crypto_aead* }
%struct.TYPE_2__ = type { i8*, i32, i32, i32 }
%struct.crypto_aead = type { i32 }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @esp_init_aead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_init_aead(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %7 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @ENAMETOOLONG, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @snprintf(i8* %10, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %21)
  %23 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %68

26:                                               ; preds = %1
  %27 = call %struct.crypto_aead* @crypto_alloc_aead(i8* %10, i32 0, i32 0)
  store %struct.crypto_aead* %27, %struct.crypto_aead** %5, align 8
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %29 = call i32 @PTR_ERR(%struct.crypto_aead* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %31 = call i64 @IS_ERR(%struct.crypto_aead* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %68

34:                                               ; preds = %26
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 2
  store %struct.crypto_aead* %35, %struct.crypto_aead** %37, align 8
  %38 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %40 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 7
  %50 = sdiv i32 %49, 8
  %51 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %38, i32 %43, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %68

55:                                               ; preds = %34
  %56 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %58 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 8
  %63 = call i32 @crypto_aead_setauthsize(%struct.crypto_aead* %56, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %68

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %66, %54, %33, %25
  %69 = load i32, i32* %6, align 4
  %70 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %70)
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local %struct.crypto_aead* @crypto_alloc_aead(i8*, i32, i32) #2

declare dso_local i32 @PTR_ERR(%struct.crypto_aead*) #2

declare dso_local i64 @IS_ERR(%struct.crypto_aead*) #2

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i32, i32) #2

declare dso_local i32 @crypto_aead_setauthsize(%struct.crypto_aead*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
