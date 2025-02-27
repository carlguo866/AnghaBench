; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_up_ref.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_p_lib.c_EVP_PKEY_up_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"EVP_PKEY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_up_ref(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @CRYPTO_UP_REF(i32* %6, i32* %4, i32 %9)
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = call i32 @REF_PRINT_COUNT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2
  %18 = zext i1 %17 to i32
  %19 = call i32 @REF_ASSERT_ISNT(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 1
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %13, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @CRYPTO_UP_REF(i32*, i32*, i32) #1

declare dso_local i32 @REF_PRINT_COUNT(i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @REF_ASSERT_ISNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
