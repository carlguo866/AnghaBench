; ModuleID = '/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_kmac_prov.c_kmac_free.c'
source_filename = "/home/carl/AnghaBench/openssl/providers/implementations/macs/extr_kmac_prov.c_kmac_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmac_data_st = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @kmac_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kmac_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kmac_data_st*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.kmac_data_st*
  store %struct.kmac_data_st* %5, %struct.kmac_data_st** %3, align 8
  %6 = load %struct.kmac_data_st*, %struct.kmac_data_st** %3, align 8
  %7 = icmp ne %struct.kmac_data_st* %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load %struct.kmac_data_st*, %struct.kmac_data_st** %3, align 8
  %10 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @EVP_MD_CTX_free(i32 %11)
  %13 = load %struct.kmac_data_st*, %struct.kmac_data_st** %3, align 8
  %14 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %13, i32 0, i32 4
  %15 = call i32 @ossl_prov_digest_reset(i32* %14)
  %16 = load %struct.kmac_data_st*, %struct.kmac_data_st** %3, align 8
  %17 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kmac_data_st*, %struct.kmac_data_st** %3, align 8
  %20 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @OPENSSL_cleanse(i32 %18, i32 %21)
  %23 = load %struct.kmac_data_st*, %struct.kmac_data_st** %3, align 8
  %24 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.kmac_data_st*, %struct.kmac_data_st** %3, align 8
  %27 = getelementptr inbounds %struct.kmac_data_st, %struct.kmac_data_st* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @OPENSSL_cleanse(i32 %25, i32 %28)
  %30 = load %struct.kmac_data_st*, %struct.kmac_data_st** %3, align 8
  %31 = call i32 @OPENSSL_free(%struct.kmac_data_st* %30)
  br label %32

32:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @EVP_MD_CTX_free(i32) #1

declare dso_local i32 @ossl_prov_digest_reset(i32*) #1

declare dso_local i32 @OPENSSL_cleanse(i32, i32) #1

declare dso_local i32 @OPENSSL_free(%struct.kmac_data_st*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
