; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ghash_pclmul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ghash_pclmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"%-30s UNAVAILABLE\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"GHASH (pclmul)\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_speed_ghash_pclmul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_speed_ghash_pclmul() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @br_ghash_pclmul_get()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @stdout, align 4
  %8 = call i32 @fflush(i32 %7)
  br label %12

9:                                                ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @test_speed_ghash_inner(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %10)
  br label %12

12:                                               ; preds = %9, %5
  ret void
}

declare dso_local i64 @br_ghash_pclmul_get(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @test_speed_ghash_inner(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
