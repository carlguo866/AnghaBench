; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ec_c25519_m62.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ec_c25519_m62.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"EC c25519_m62\00", align 1
@br_curve25519 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%-30s UNAVAILABLE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_speed_ec_c25519_m62 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_speed_ec_c25519_m62() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* (...) @br_ec_c25519_m62_get()
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @test_speed_ec_inner(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6, i32* @br_curve25519)
  br label %10

8:                                                ; preds = %0
  %9 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %5
  ret void
}

declare dso_local i32* @br_ec_c25519_m62_get(...) #1

declare dso_local i32 @test_speed_ec_inner(i8*, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
