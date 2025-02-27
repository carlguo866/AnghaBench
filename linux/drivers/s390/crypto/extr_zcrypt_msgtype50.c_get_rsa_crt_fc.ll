; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype50.c_get_rsa_crt_fc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_zcrypt_msgtype50.c_get_rsa_crt_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ica_rsa_modexpo_crt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CRT_1K = common dso_local global i32 0, align 4
@CRT_2K = common dso_local global i32 0, align 4
@CRT_4K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_rsa_crt_fc(%struct.ica_rsa_modexpo_crt* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ica_rsa_modexpo_crt*, align 8
  %5 = alloca i32*, align 8
  store %struct.ica_rsa_modexpo_crt* %0, %struct.ica_rsa_modexpo_crt** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %4, align 8
  %7 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %4, align 8
  %15 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 128
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @CRT_1K, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %33

21:                                               ; preds = %13
  %22 = load %struct.ica_rsa_modexpo_crt*, %struct.ica_rsa_modexpo_crt** %4, align 8
  %23 = getelementptr inbounds %struct.ica_rsa_modexpo_crt, %struct.ica_rsa_modexpo_crt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 256
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @CRT_2K, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @CRT_4K, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %18
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
