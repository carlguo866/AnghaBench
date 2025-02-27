; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_engine.c_util_store_cap.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_engine.c_util_store_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.util_store_cap_data = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"STORE(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @util_store_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @util_store_cap(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.util_store_cap_data*, align 8
  %6 = alloca [256 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.util_store_cap_data*
  store %struct.util_store_cap_data* %8, %struct.util_store_cap_data** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @OSSL_STORE_LOADER_get0_engine(i32* %9)
  %11 = load %struct.util_store_cap_data*, %struct.util_store_cap_data** %5, align 8
  %12 = getelementptr inbounds %struct.util_store_cap_data, %struct.util_store_cap_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @OSSL_STORE_LOADER_get0_scheme(i32* %17)
  %19 = call i32 @BIO_snprintf(i8* %16, i32 256, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.util_store_cap_data*, %struct.util_store_cap_data** %5, align 8
  %21 = getelementptr inbounds %struct.util_store_cap_data, %struct.util_store_cap_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.util_store_cap_data*, %struct.util_store_cap_data** %5, align 8
  %24 = getelementptr inbounds %struct.util_store_cap_data, %struct.util_store_cap_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %27 = call i32 @append_buf(i32 %22, i32 %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = load %struct.util_store_cap_data*, %struct.util_store_cap_data** %5, align 8
  %31 = getelementptr inbounds %struct.util_store_cap_data, %struct.util_store_cap_data* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %15
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

declare dso_local i64 @OSSL_STORE_LOADER_get0_engine(i32*) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @OSSL_STORE_LOADER_get0_scheme(i32*) #1

declare dso_local i32 @append_buf(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
